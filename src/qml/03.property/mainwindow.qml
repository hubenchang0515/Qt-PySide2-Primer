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

        Text {
            // 定义一个整数类型的熟悉，名为number，值为0
            property int number : 0
            // 将显示的内容设为number
            text: "clicked : " + number

            id: text
            Layout.fillWidth: true
            Layout.preferredHeight: 300
            
            font.pixelSize: 72  // 字体大小
            horizontalAlignment: Text.AlignHCenter // 水平居中
            verticalAlignment: Text.AlignVCenter   // 竖直居中
        }

        Button {
            width: 640
            text: qsTr("BUTTON")
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked : {
                // 点击按钮时令text的number属性加一
                text.number += 1
            }
        }
    }
}