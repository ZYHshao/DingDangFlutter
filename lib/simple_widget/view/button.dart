import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  dynamic value = "篮球";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var item1 = DropdownMenuItem(child: Text("篮球"),value: "篮球");
    var item2 = DropdownMenuItem(child: Text("足球"),value: "足球");
    var item3 = DropdownMenuItem(child: Text("排球"),value: "排球");
    List<DropdownMenuItem<dynamic>> list = [item1,item2,item3];
    var drop = DropdownButton(items: list, onChanged: (v){print(v);},value:this.value);

    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialButton组件"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              MaterialButton(
                child: Text("MaterialButton"),
                onPressed: (){},
              ),
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: (){},
              ),
              drop,
              FloatingActionButton(
                child: Text("FloatingActionButton"),
                onPressed: (){},
              ),
              IconButton(icon: Text("^_^"), onPressed: ()=>debugPrint("图标按钮"))
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
