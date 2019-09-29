import sys
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from random import choice

if __name__ == "__main__":
    qmlList = [
        "anchors.qml",
        "row.qml",
        "column.qml",
        "grid.qml",
        "flow.qml",
        "layout.qml"
    ]
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine(choice(qmlList)) # 随机加载一个qml

    sys.exit(app.exec_())