import 'package:flutter/material.dart';

class MixinView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mixin类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    '''        Mixin是Dart中非常强大的一个特性。通过前面的学习，我们知道，Dart只支持单继承，即子类只能够有一个父类。有时候，我们需要集合多个类的功能来实现一个复杂的自定义类，就需要使用到Mixin特性。
        Mixin从字面来理解为混合的意思，顾名思义，Mixin的主要作用也是进行混合，其允许一个类将其他类的功能混合进来，例如：''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    r'''main() {
	var bird = Bird("鸟类");
	bird.desc();//Instance of 'Bird'
}
//动物类 作为基类
class  Animal {
	String name;
	Animal(this.name);
}
// 用来进行混合的描述类
class Descript {
	desc(){
		print(this);
	}
}
// 动物鸟类
class Bird extends Animal with Descript {
	Bird(name):super(name);
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
