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

    // 创建组件
    Component {
        id: parameter // 组件ID

        // 顶层元素
        RowLayout {

            TextField {
                Layout.fillWidth: true
                Layout.fillHeight: true

                placeholderText: qsTr("属性名")
            }

            ComboBox {
                Layout.fillWidth: true
                Layout.fillHeight: true

                textRole: "key"
                model: ListModel {
                    ListElement { key: "int"; value: 1 }
                    ListElement { key: "string"; value: 2 }
                    ListElement { key: "bool"; value: 3 }
                }
            }

            TextField {
                Layout.fillWidth: true
                Layout.fillHeight: true

                placeholderText: qsTr("值域下界")
            }

            TextField {
                Layout.fillWidth: true
                Layout.fillHeight: true

                placeholderText: qsTr("值域上界")
            }
        }
    }

    Column {
        anchors.fill: parent
        spacing: 5

        // 加载组件
        Loader {
            id: param1
            sourceComponent: parameter      // 组件的id
            width: parent.width
        }

        Loader {
            id: param2
            sourceComponent: parameter      // 组件的id
            width: parent.width
        }

        Loader {
            id: param3
            sourceComponent: parameter      // 组件的id
            width: parent.width
        }
    }
}