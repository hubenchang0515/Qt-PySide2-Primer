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
            // 定义一个整数类型的属性，名为number，值为0
            property int number : 0
            // 将显示的内容设为number
            text: "clicked : " + number

            id: text
            Layout.fillWidth: true
            Layout.preferredHeight: 300
            
            font.pixelSize: 72  // 字体大小
            horizontalAlignment: Text.AlignHCenter // 水平居中
            verticalAlignment: Text.AlignVCenter   // 竖直居中

            // 定义一个方法，调用这个方法可以使number的值加n
            function add(n)
            {
                number += n
            }
        }

        Button {
            width: 640
            text: qsTr("BUTTON")
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked : {
                // 调用text的add方法使显示的值加一
                text.add(1)
            }
        }
    }
}