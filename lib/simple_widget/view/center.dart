import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Center组件"),
      ),
        body: Center (
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
