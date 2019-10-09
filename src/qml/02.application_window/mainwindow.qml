import QtQuick 2.13
import QtQuick.Controls 2.5

ApplicationWindow {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    // 状态栏
    menuBar : MenuBar {
        Menu {
            title: qsTr("文件(&F)")
            MenuItem { text: qsTr("打开(&O)") }
            MenuItem { text: qsTr("保存(&S)") }
        }

        Menu {
            title: qsTr("编辑(&E)")
            MenuItem { text: qsTr("复制(&C)") }
            MenuItem { text: qsTr("粘贴(&P)") }
        }
    }

    // Header放置一个工具栏
    header : ToolBar {
        Row {
            ToolButton {
                icon.source: "./res/open.png"
                icon.color: "transparent" // transparent表示使用图片原本的颜色
            }

            ToolButton {
                icon.source: "./res/save.png"
                icon.color: "transparent"
            }

            ToolButton {
                icon.source: "./res/copy.png"
                icon.color: "transparent"
            }

            ToolButton {
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
    ScrollView { // 带滚动条
        anchors.fill: parent
        focus: true

        TextArea {
            font.pixelSize: 22
            focus: true  // 获取焦点(即键盘输入状态)
        }
    }
}