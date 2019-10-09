import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    // 流式定位器
    Flow {
        anchors.fill: parent //填满父对象(即窗口)

        Rectangle {
            width: 240      // 宽
            height: 80      // 高
            color:"red"
        }

        Rectangle {
            width: 160
            height: 80
            color:"yellow"
        }

        Rectangle {
            width: 160
            height: 80
            color:"blue"
        }

        Rectangle {
            width: 320
            height: 80
            color:"orange"
        }

        Rectangle {
            width: 160
            height: 80
            color:"green"
        }

        Rectangle {
            width: 400
            height: 80
            color:"purple"
        }
    }
}