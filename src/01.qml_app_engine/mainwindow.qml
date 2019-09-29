import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: "PySide2 QML"

    Rectangle {
        anchors.fill: parent
        color: "black"

        Text {
            anchors.centerIn: parent
            color: "white"
            text: "Hello World"
        }
    }
}