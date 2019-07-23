import 'package:flutter/material.dart';

class ListViewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView组件"),
        ),
        body: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index){
          return Container(
            color: Colors.red,
            child: Text("数据${index}"),
          );
        })
    );
  }
}
