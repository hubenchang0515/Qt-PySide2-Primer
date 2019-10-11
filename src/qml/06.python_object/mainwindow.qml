import QtQuick 2.13
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

ApplicationWindow {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    // FileDialog是用于选择文件的窗口
    FileDialog {
        id: openFileDialog
        title: qsTr("打开文件")
        folder: "."
        onAccepted: {
            // 使用从Python注册的file对象读取文件内容
            editor.text = file.read(fileUrls)

            // 关闭这个窗口
            close() 
        }
    }

    FileDialog {
        id: saveFileDialog
        title: qsTr("保存文件")
        folder: "."
        onAccepted: {
            // 使用从Python注册的file对象保存文件内容
            file.write(fileUrls, editor.text)

            // 关闭这个窗口
            close()
        }
    }

    // 打开文件的Action
    Action {
        id: openFileAction

        // 触发action时显示文件窗口
        onTriggered: {
            openFileDialog.open()
        }
    }

    // 保存文件的Action
    Action {
        id: saveFileAction

        onTriggered: {
            saveFileDialog.open()
        }
    }

    // 复制的Action
    Action {
        id: copyAction

        onTriggered: {
            editor.copy() // 调用editor的copy方法
            editor.forceActiveFocus() // 恢复焦点
        }

    }

    // 粘贴的Action
    Action {
        id: pasteAction

        onTriggered: {
            editor.paste() // 调用editor的paste方法
            editor.forceActiveFocus() // 恢复焦点
        }
    }

    // 状态栏
    menuBar : MenuBar {
        Menu {
            title: qsTr("文件(&F)")
            MenuItem { 
                action: openFileAction
                text: qsTr("打开(&O)")
            }
            MenuItem { 
                action: saveFileAction
                text: qsTr("保存(&S)")
            }
        }

        Menu {
            title: qsTr("编辑(&E)")
            MenuItem { 
                action: copyAction
                text: qsTr("复制")
            }
            MenuItem {
                action: pasteAction
                text: qsTr("粘贴")
            }
        }
    }

    // Header工具栏
    header : ToolBar {
        Row {
            ToolButton {
                action: openFileAction
                icon.source: "./res/open.png"
                icon.color: "transparent"
            }

            ToolButton {
                action: saveFileAction
                icon.source: "./res/save.png"
                icon.color: "transparent"
            }

            ToolButton {
                action: copyAction 
                icon.source: "./res/copy.png"
                icon.color: "transparent"
            }

            ToolButton {
                action: pasteAction 
                icon.source: "./res/paste.png"
                icon.color: "transparent"
            }
        }
    }

    // Footer放置一个文本当作状态栏
    footer : Text {
        text: qsTr("状态栏")

    }

    // 其余对象属于Content
    ScrollView { 
        id: scrollView
        anchors.fill: parent
        focus: true

        property int select : 0

        TextArea {
            id: editor
            font.pixelSize: 22
            focus: true  // 获取焦点(即键盘输入状态)
            persistentSelection: true  // 丢失焦点时保留选取
            selectByMouse: true  // 允许通过鼠标选取

            // text发生改变时根据长宽判断是否需要显示滚动条
            onTextChanged : {
                if(editor.height > scrollView.height)
                {
                    scrollView.ScrollBar.vertical.policy = ScrollBar.AlwaysOn
                }
                else
                {
                    scrollView.ScrollBar.vertical.policy = ScrollBar.AlwaysOff
                }

                if(editor.width > scrollView.width)
                {
                    scrollView.ScrollBar.horizontal.policy = ScrollBar.AlwaysOn
                }
                else
                {
                    scrollView.ScrollBar.horizontal.policy = ScrollBar.AlwaysOff
                }
            }
        }
    }
}