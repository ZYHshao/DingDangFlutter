import 'package:flutter/material.dart';

class OverflowBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("OverflowBox组件"),
      ),
      body: Container(
        color: Colors.orange,
        child: OverflowBox(
          maxHeight: 300,
          maxWidth: 300,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.red.withAlpha(100),
            width: 300,
            height: 300,
          ),
        ),
        height: 100,
        width: 200,
      ),
    );
  }
}
