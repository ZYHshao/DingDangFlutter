import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Column组件"),
      ),
      body: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("组件1"),
              height: 100,
            ),
            Container(
              color: Colors.grey,
              child: Text("组件2"),
              height: 100,
            ),
            Container(
              color: Colors.brown,
              child: Text("组件3"),
              height: 100,
            )
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
