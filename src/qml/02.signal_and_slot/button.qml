import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.13

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            id: rect
            Layout.fillWidth: true
            Layout.preferredHeight: 300
            color: "black"
        }

        Button {
            width: 640
            text: qsTr("BUTTON")
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked : {
                // 将rect的颜色设为随机值
                rect.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
            }
        }
    }
}