import sys,os
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from random import choice

if __name__ == "__main__":

    app = QGuiApplication(sys.argv)
    qmlFile = "anchors.qml" # ,"row.qml", "column.qml", "grid.qml", "flow.qml", "layout.qml"
    qmlPath = os.path.abspath(os.path.join(os.path.dirname(__file__), qmlFile))
    engine = QQmlApplicationEngine(qmlPath)

    sys.exit(app.exec_())