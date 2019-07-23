import 'package:flutter/material.dart';

class EnumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("枚举类型"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  child: Text(
                    "        枚举是一种特殊的类型，其用来描述有限个数的数据集合。比如我们前面在定义教师类时，其中定义了一个科目的属性，虽然我们将其定义为了字符串类型，但是这并不十分严谨，教师所教学科目的类目是有限的，而且应该是固定的，不会随意增减，对于这种情况，使用枚举非常合适。",
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    r'''main() {
	var teacher = Teacher("珲少",Subject.Dart);
	teacher.desc();//珲少:Subject.Dart
}
enum Subject {
	Dart,
	JavaScript,
	ObjectiveC,
	Swift,
	Python
}
class Teacher {
	String name;
	Subject subject;
	Teacher(this.name,this.subject);
	desc(){
		print("${this.name}:${this.subject}");
	}
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
