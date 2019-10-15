import QtQuick 2.13
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.13

Item {
    id: rootItem
    signal login(string username, string password)
    signal logout()

    GridLayout {
        anchors.centerIn: parent
        columns: 2

        Text {
            Layout.fillWidth: true
            text: qsTr("用户名")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: userInput
        }

        Text {
            Layout.fillWidth: true
            text: qsTr("密  码")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        TextField {
            id: passInput
            echoMode: TextInput.Password
        }

        Button {
            text: qsTr("登录")
            Layout.columnSpan: 2 // 占两列
            Layout.fillWidth: true

            onClicked: {
                rootItem.login(userInput.text, passInput.text)
            }
        }
    }
}