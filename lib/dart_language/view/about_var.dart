import 'package:flutter/material.dart';

class AboutVarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("关于变量"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    "var name = \"珲少\"",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    "        var关键字用来声明变量，var是一个非常有意思的关键字，首先在Dart中，变量都是有类型的，var关键字作用是让解释器来推断变量的类型，在变量进行赋值时，解释器会根据赋值对其类型进行推断。\n        和很多强类型语言一样，Dart也非常强调类型安全。很多时候，变量类型确定后我们也不需要将其他类型的值赋值给它,但是总有特殊情况出现，如果某个变量的类型是可变的，则在Dart中可以使用dynamic关键字来声明，它的意思是变量的类型是动态的。\n        当然，如果你想拥强制的把控力，你也可以在声明变量时，显式的标注它的类型，例如：",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "String subject = \"Dart\";",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    "       在开发中，很多时候有些数据是不可变的，例如一些配置项。对于不可变的变量，可以使用final或者const关键字。final关键字声明的变量为最终变量，const声明的变量为常量。",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
