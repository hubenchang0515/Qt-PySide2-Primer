import QtQuick 2.13
import QtQuick.Controls 2.5

ApplicationWindow {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

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
            title: qsTr("编辑(&E)")
            MenuItem { 
                action: copyAction // 绑定Action

                text: qsTr("复制")
            }
            MenuItem {
                action: pasteAction // 绑定Action

                text: qsTr("粘贴")
            }
        }
    }

    // Header放置一个工具栏
    header : ToolBar {
        Row {
            ToolButton {
                action: copyAction // 绑定Action

                icon.source: "./res/copy.png"
                icon.color: "transparent"
            }

            ToolButton {
                action: pasteAction // 绑定Action

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
        anchors.fill: parent
        focus: true

        property int select : 0

        TextArea {
            id: editor
            font.pixelSize: 22
            focus: true  // 获取焦点(即键盘输入状态)
            persistentSelection: true  // 丢失焦点时保留选取
            selectByMouse: true  // 允许通过鼠标选取
        }
    }
}