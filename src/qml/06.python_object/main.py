import sys
from PySide2 import QtCore
from PySide2.QtCore import QObject, QUrl
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine

class MyQmlFile(QObject) :
    def __init__(self, parent=None) :
        super().__init__(parent)
        
    @QtCore.Slot(str,str)
    def write(self, url, text) :
        # 打开文件时需要将url转换为本地路径，编码采用UTF-8
        fp = open(QUrl(url).toLocalFile(), "w", encoding='UTF-8')
        fp.write(text)
        fp.close()
        
    @QtCore.Slot(str, result=str)
    def read(self, url) :
        fp = open(QUrl(url).toLocalFile(), "r", encoding='UTF-8')
        ret = fp.read()
        fp.close()
        return ret

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # 实例化为对象
    myQmlFile = MyQmlFile()

    # 先将对象注册到QML上下文中，第一个参数为其在QML中的名字
    engine.rootContext().setContextProperty("file", myQmlFile)

    # 然后再加载QML文件
    engine.load("mainwindow.qml")

    sys.exit(app.exec_())