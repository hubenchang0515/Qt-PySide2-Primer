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

            // 定义信号
            signal colorChanged(double r, double g, double b)
            // 对应的槽
            onColorChanged: function(r, g, b) {
                color = Qt.rgba(r, g, b, 1)
            }
        }

        Button {
            width: 640
            text: qsTr("BUTTON")
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked : {
                // rect发送colorChanged信号
                rect.colorChanged(Math.random(), Math.random(), Math.random())
            }
        }
    }
}