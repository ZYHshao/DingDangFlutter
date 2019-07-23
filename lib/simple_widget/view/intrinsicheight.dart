import 'package:flutter/material.dart';

class IntrinsicHeightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("IntrinsicHeightg组件"),
      ),
      body: IntrinsicHeight(
        child: Container(
          color: Colors.red,
          height: 200,
          width: 30,
        ),

      ),
    );
  }
}
