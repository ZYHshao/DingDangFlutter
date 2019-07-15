import 'package:flutter/material.dart';

class VarBoolView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("布尔类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    '''        布尔类型是Dart中最简单的一种数据类型，其只有两个字面量值：true和false。
        布尔类型虽然简单，却是编程中必不可少的数据类型。在实现复杂的分支逻辑时，往往需要判断大量的条件，布尔运算是条件运算的核心。''',
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
