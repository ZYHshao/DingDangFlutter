import 'package:flutter/material.dart';

class FunctionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("函数"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "        在数学中，函数代表了一种运算规则，函数有定义域，值域和映射关系3要素。在编程中，函数的概念与数学中函数的概念相差不多，也有3要素，分别为参数，返回值和函数体。任何一个函数都由这3部分组成，在平时编写main函数时，我们隐藏了返回值并且忽略了参数，一个完整的main函数编写如下：",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    '''void main(List<String> argus) {
	print(argus);
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
