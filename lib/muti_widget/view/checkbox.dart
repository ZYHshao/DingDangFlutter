import 'package:flutter/material.dart';

class CheckBoxView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxViewState();
  }
}

class _CheckBoxViewState extends State<CheckBoxView> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox组件"),
      ),
      body: Form(child: Column(
        children: <Widget>[
          Checkbox(value: select, onChanged: (select){
              setState(() {
                this.select = select;
              });
          }),
          Checkbox(value: true, onChanged: null),
          Checkbox(value: false, onChanged: null)
        ],
      ))
      ,
    );
  }
}
