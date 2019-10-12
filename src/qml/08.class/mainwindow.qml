import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: mainWindow
    visible: true
    width: 640
    height: 400
    title: qsTr("PySide2 QML")

    Row {
        spacing: 20 // Row中元素之间的间隔

        Tube {
            color: "red"
            number: 2
        }

        Tube {
            color: "orange"
            number: 0
        }

        Tube {
            color: "yellow"
            number: 1
        }

        Tube {
            color: "green"
            number: 9
        }
    }
}