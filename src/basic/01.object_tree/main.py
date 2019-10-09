import sys
from PySide2.QtCore import QObject,QCoreApplication

# 继承QObject构建我们自己的类
class MyClass(QObject) :
    # 构造函数
    def __init__(self, parent=None) :
        super().__init__(parent) # 调用父类的构造函数，组织对象树
        if(parent == None) :
            print(self, "is a root object.")
        else :
            print(self, "is a son object of", parent)

    # 析构函数
    def __del__(self) :
        print(self, "had been deleted.")

if __name__ == "__main__":
    app = QCoreApplication(sys.argv)
    obj1 = MyClass()
    obj2 = MyClass()
    obj3 = MyClass(obj1)
    obj4 = MyClass(obj1)
    obj5 = MyClass(obj2)
    obj6 = MyClass(obj2)
    del obj2 # 删除变量obj2、使其所引用的对象的引用计数为0被析构
    app.exec_()