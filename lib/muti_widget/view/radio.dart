import 'package:flutter/material.dart';

class RadioView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioViewState();
  }
}

class _RadioViewState extends State<RadioView> {
  var radioValue = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio组件"),
      ),
      body: Column(
          children: <Widget>[
            Radio(activeColor: Colors.red,value: 1, groupValue: this.radioValue, onChanged: (value){
              setState((){
                radioValue = value;
              });
            }),
            Radio(value: 2, groupValue: this.radioValue, onChanged: (value){
              setState((){
                radioValue = value;
              });
            }),
            Radio(value: 3, groupValue: this.radioValue, onChanged: (value){
              setState((){
                radioValue = value;
              });
            })
          ],
      )
      ,
    );
  }
}
