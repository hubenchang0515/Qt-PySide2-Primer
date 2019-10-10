import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.13
import QtQml 2.13

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            Layout.fillWidth: true
            Layout.preferredHeight: 300

            Rectangle {
                id: rect1
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "black"
                // 连接信号槽
                Connections {
                    target: button // 信号发出者的id
                    onClicked: {   // clicked信号的槽
                        rect1.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
                    }
                }
            }

            Rectangle {
                id: rect2
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "black"
                // 连接信号槽
                Connections {
                    target: button // 信号发出者的id
                    onClicked: {   // clicked信号的槽
                        rect2.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
                    }
                }
            }
        }

        Button {
            id: button
            width: 640
            text: qsTr("BUTTON")
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}