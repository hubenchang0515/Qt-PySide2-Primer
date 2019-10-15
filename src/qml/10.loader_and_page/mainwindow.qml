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

    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "page1.qml"
    }

    Connections {
        // 信号发送者，item是Loader的属性，表示所加载对象的顶级元素
        target: mainLoader.item 

        // 信号处理器
        onLogin: function(username, password){
            // 加载page2.qml，并设置username和password的值
            mainLoader.setSource("page2.qml",
                        { "username" : username,
                        "password" : password
                        })
        }
    }

    Connections {
        // 信号发送者，item是Loader的属性，表示所加载对象的顶级元素
        target: mainLoader.item 

        // 信号处理器
        onLogout: function(){
            mainLoader.setSource("page1.qml")
        }
    }
}