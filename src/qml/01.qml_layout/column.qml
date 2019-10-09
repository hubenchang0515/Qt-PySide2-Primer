import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainWindow
    visible: true // 是否可见，请注意默认值是false不可见
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    // 列定位器
    Column {
        Rectangle {
            width: 80       // 宽80
            height: 80      // 高80
            color:"red"     // 红色
        }

        Rectangle {
            width: 80
            height: 80
            color:"yellow"
        }

        Rectangle {
            width: 80
            height: 80
            color:"blue"
        }
    }
}