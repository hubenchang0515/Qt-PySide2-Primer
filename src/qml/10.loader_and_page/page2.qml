import QtQuick 2.13
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.13

Item {
    id: rootItem
    signal login(string username, string password)
    signal logout()

    /* 定义两个属性用来接收参数 */
    property string username
    property string password

    ColumnLayout {
        anchors.centerIn: parent
    
        Text {
            text: "<h1>Welcome " + username + "</h1>"
        }

        Button {
            text: qsTr("退出")
            Layout.alignment: Qt.AlignHCenter // 布局块内水平居中

            onClicked: {
                rootItem.logout()
            }
        }

    }
}