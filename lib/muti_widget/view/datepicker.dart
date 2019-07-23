import 'package:flutter/material.dart';

class DatePickerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker组件"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text("日期"),
            onPressed: (){
              showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2009,5,1,11,21,33), lastDate: DateTime(2029,5,1,11,21,33)).then((DateTime val) {
                print(val);
              }) ;
            },),
          RaisedButton(child: Text("年份"),onPressed: (){
            showDatePicker(context: context, initialDate: DateTime(2019,4,1), firstDate: DateTime(2011,1,1), lastDate: DateTime(2019,5,1,11,21,33),initialDatePickerMode: DatePickerMode.year).then((DateTime val) {
              print(val);
            }) ;
          },),
          RaisedButton(child: Text("时间"),onPressed: (){
            showTimePicker(context: context, initialTime: TimeOfDay.now());
          },)
        ],
      )
    );
  }
}
