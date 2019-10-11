import sys,os
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    qmlFile = "connect.qml" # "button.qml", "signal.qml"
    qmlPath = os.path.abspath(os.path.join(os.path.dirname(__file__), qmlFile))
    engine = QQmlApplicationEngine(qmlPath)

    sys.exit(app.exec_())