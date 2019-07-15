import 'package:flutter/material.dart';

class VarTypeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("数值类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "        顾名思义，数值类型用来描述与数值相关的数据。在数学中，数有多种分类方法，比如可以分为整数、小数，也可以分为正数、负数等等。在Dart中，数值类型有两种，分别为int和double。int是integer的缩写，用来描述整型数据，double是双精度浮点类型，即用64位来描述带有小数的数值。\n        使用0x开头定义数值，则表示使用十六进制数值。e符号表示的是科学计数法。\n        整型数值是可以直接赋值给浮点型变量的，Dart会自动处理将其转换成浮点数。\n        int和double类中都定义了许多常用的属性和方法，通过属性我们可以获取到许多关于当前数值对象的信息。",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "var count1 = 1;\nvar count2 = 1.1;\n//runtimeType属性获取运行时类型\nprint(count1.runtimeType);//int\nprint(count2.runtimeType);//double \n//获取当前数值是否为有限值  返回true或者fals\nprint(count1.isFinite); \n//获取当前数值是否为无限值  返回true或者false\nprint(count1.isInfinite); \n//获取当前数值是否为NaN NaN描述非数值\nprint(count1.isNaN); \n//获取当前数值是否为负数\nprint(count1.isNegative); \n//获取当前数值的符号 返回1 则表示为正数 -1则表示为负数 0表示当前数值为0\nprint(count1.sign); \n//获取存储当前数值需要的最少位数  int类型独有的属性\nprint(count1.bitLength); \n//获取当前数值是否为偶数 int类型独有的属性\nprint(count1.isEven); \n//获取当前数值是否为奇数 int类型独有的属性\nprint(count1.isOdd);",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
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
