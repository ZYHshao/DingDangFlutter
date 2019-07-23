import 'package:flutter/material.dart';

class ConstrainedBoxsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox组件"),
      ),
      body: ConstrainedBox (
        child: Container(
          color: Colors.red,
          width: 300,
        ),
        constraints: BoxConstraints.expand(width: 200, height: 200),
      ),
    );
  }
}
