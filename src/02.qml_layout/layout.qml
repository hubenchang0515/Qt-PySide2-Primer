import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Layouts 1.13

Window {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: "PySide2 QML"

    // 列布局管理器
    ColumnLayout {
        anchors.fill: parent
        
        // 行布局管理器
        RowLayout {
            Layout.fillWidth: true    // 宽度填满布局
            Layout.fillHeight: true   // 高度填满布局

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "red"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "yellow"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "blue"
            }
        }

        // 行布局管理器
        RowLayout {
            Layout.fillWidth: true    // 宽度填满布局
            Layout.fillHeight: true   // 高度填满布局

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "orange"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "green"
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "purple"
            }
        }
    }
}