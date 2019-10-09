import sys
from PySide2 import QtCore
from PySide2.QtCore import QObject,QCoreApplication

# 继承QObject构建我们自己的类
class People(QObject) :
    # 定义信号(可以有多个参数)
    speak = QtCore.Signal(str)
    
    # 构造函数
    def __init__(self, name, parent=None) :
        # 调用父类的构造函数，组织对象树
        super().__init__(parent) 
        self.__name = name

    # 定义槽，需要用result指定返回值类型(没有返回值可以省略)
    @QtCore.Slot(str, result=None)
    def hear(self, text) :
        print(self.__name, "hear : ", text)


if __name__ == "__main__":
    # 创建应用
    app = QCoreApplication(sys.argv)

    tom = People("Tom")
    jerry = People("Jerry")
    
    # 绑定信号和槽
    tom.speak.connect(jerry.hear)
    jerry.speak.connect(tom.hear)
    
    # 发送信号
    tom.speak.emit("How are you?")
    jerry.speak.emit("Fine, thank yout.")

    # 启动应用
    app.exec_()