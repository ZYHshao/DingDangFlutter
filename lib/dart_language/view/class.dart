import 'package:flutter/material.dart';

class ClassView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("关于类"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "        Dart是一门基于类和继承的面向对象语言，说到对象，我们就不得不谈类。对象是类的实例，对象也都是由类构造出来的，更通俗的讲，我们可以把类理解为对象的模板，类中定义了对象的属性和方法。",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    '''class Circle {
	//半径
	double radius;
	//圆心X
	double centerX;
	//圆心Y
	double centerY;
}

''',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        上面我们简单定义了一个圆形类，其中定义了3个属性，分别描述圆的半径和圆心的X、Y坐标。尽管我们没有给这个圆形类定义任何方法，但它也已经是一个完整的自定义类了，我们可以通过它构造圆形对象来存储数据。
        通过类创建对象需要调用类的构造方法，类的构造方法通常与类名一致，也可以定义独立名称的构造方法，但是依然需要通过类名来调用。当我们定义完成一个类时，Dart默认会生成一个没有参数的构造方法，我们可以直接通过类名进行调用，例如：
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    '''main() {
	var circle = new Circle();//构造圆形对象
	circle.radius = 3;
	circle.centerX = 1;
	circle.centerY = 1;
}
class Circle {
	//半径
	double radius;
	//圆心X
	double centerX;
	//圆心Y
	double centerY;
}
''',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
