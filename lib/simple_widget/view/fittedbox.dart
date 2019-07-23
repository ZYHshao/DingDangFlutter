import 'package:flutter/material.dart';

class FittedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Center组件"),
      ),
      body: FittedBox (
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
        ),
        alignment: Alignment.center,
        fit: BoxFit.fill,
      ),
    );
  }
}
