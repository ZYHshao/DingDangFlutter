import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Row组件"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text("组件1"),
              height: 100,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text("组件2"),
              height: 100,
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text("组件3"),
              height: 100,
            ),
            flex: 1,
          ),
        ],
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection:VerticalDirection.up
      ),
    );
  }
}
