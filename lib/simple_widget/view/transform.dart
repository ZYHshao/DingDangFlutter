import 'package:flutter/material.dart';

class TransformView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform组件"),
      ),
      body: Transform(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        transform: Matrix4.rotationZ(0.2),
        alignment: Alignment.center,
      ),
    );
  }
}
