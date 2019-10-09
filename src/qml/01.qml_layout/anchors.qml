import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    Rectangle {
        color: "black"

        anchors.fill: parent // 填满父对象
    }

    Rectangle {
        id: red         // id为red，可以在任何地方通过red操作这个对象
        width: 80       // 宽80
        height: 80      // 高80
        color:"red"     // 红色

        anchors.centerIn: parent // 与父对象中心对齐
    }

    Rectangle {
        width: 80
        height: 80
        color:"yellow"

        
        anchors.top : red.top // 上边沿和red的上边沿对齐，即y相同
        anchors.left : red.right // 左边沿和red的右边沿对齐
    }

    Rectangle {
        width: 80
        height: 80
        color:"blue"

        anchors.top : red.bottom // 上边沿和red的下边沿对齐
        anchors.left : red.left // 左边沿和red的左边沿对齐，即x相同
    }
}