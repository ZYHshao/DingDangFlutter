import 'package:flutter/material.dart';

class ListTypeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    "List<int> list = [1,2,3,4];",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    "其中尖括号中的类型用来指定列表中元素的类型，如果列表明确了其中元素的类型，则它也只能存放这种类型的数据，否则会产生运行时异常。\nList类中封装了大量的实例方法，这些方法可以极大的提高开发者的工作效率，列举如下：",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    '''	var l = [];
	//向列表中增加元素
	l.add(1);
	//向列表中增加一组元素
	l.addAll([2,3]);
	//将列表对象映射成字典对象 下标为键 元素为值
	print(l.asMap());//{0: 1, 1: 2, 2: 3}
	//将列表中某个范围元素进行覆盖
	l.fillRange(0,2,"a");//[a, a, 3]
	//获取列表某个范围内的元素集合
	print(l.getRange(0,3));
	//获取列表中某个元素的下标 从前向后找 如果没有则返回-1
	print(l.indexOf('a'));
	//获取列表中某个元素的下标 从后向前找 如果没有则返回-1
	print(l.lastIndexOf("a"));
	//向列表中的指定位置插入一个元素
	l.insert(0,'s');//[s, a, a, 3]
	//向列表的指定位置插入一组元素
	l.insertAll(0,["a","b","c"]);//[a, b, c, s, a, a, 3]
	//删除列表中的指定元素 从前向后找到第一个删除
	l.remove("a");
	//删除列表中指定位置的一个元素
	l.removeAt(0);
	//删除列表中的最后一个元素
	l.removeLast();
	//删除列表中指定范围内的元素
	l.removeRange(0,2);
	//将列表中指定范围的元素进行替换，替换为集合参数中的元素
	l.replaceRange(0,2,[1,2,3,4]);
	//截取列表中范围内的元素返回新的列表
	print(l.sublist(0,3));
	//判断列表中是否包含指定元素
	print(l.contains(2));
	//使用指定拼接符将列表拼接为字符串
	print(l.join("-"));//1-2-3-4
	//将列表转换为字符串
	print(l.toString());//[1, 2, 3, 4]
	print(l);
	//删除列表中所有的元素
	l.clear();
''',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              )
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
