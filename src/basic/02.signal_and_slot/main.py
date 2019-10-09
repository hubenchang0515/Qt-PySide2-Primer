import sys
from PySide2 import QtCore
from PySide2.QtCore import QObject,QCoreApplication

# 继承QObject构建我们自己的类
class People(QObject) :
    # 定义信号，参数为 str,str 或 str,int
    speak = QtCore.Signal((str,str),(str,int))
    
    # 构造函数
    def __init__(self, name, parent=None) :
        # 调用父类的构造函数，组织对象树
        super().__init__(parent) 
        self.name = name

    # 定义槽，需要用result指定返回值类型(没有返回值可以省略)
    @QtCore.Slot(str, str, result=None) # 参数类型为str,str
    @QtCore.Slot(str, int, result=None) # 或 str,int
    def hear(self, speaker, text) :
        print(self.name, "hear", speaker, "speak :", text)


if __name__ == "__main__":
    # 创建应用
    app = QCoreApplication(sys.argv)

    tom = People("Tom")
    jerry = People("Jerry")
    
    # 绑定信号和槽
    tom.speak.connect(jerry.hear) # 默认第一组参数类型
    jerry.speak[str,int].connect(tom.hear) # 指定参数类型
    
    # 发送信号
    tom.speak.emit(tom.name, "How old are you?") # 默认第一组参数类型
    jerry.speak[str,int].emit(jerry.name, 18) # 指定参数类型

    # 启动应用
    app.exec_()