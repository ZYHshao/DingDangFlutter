import 'package:flutter/material.dart';

class SwitchView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SwitchViewState();
  }
}

class _SwitchViewState extends State<SwitchView> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch组件"),
      ),
      body: Switch(value: selected,onChanged: (value){
        setState(() {
          selected = value;
        });
      },)
    );
  }
}
