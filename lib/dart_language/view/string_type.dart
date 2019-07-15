import 'package:flutter/material.dart';

class VarStringView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("字符串类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "        字符串几乎是编程中最常用的数据类型。在Dart中，可以使用单引号或者双引号来创建字符串。使用3对单引号或者3对双引号，可以进行多行字符串的创建，在某些应用场景下，这个语法特点十分有用。",
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
