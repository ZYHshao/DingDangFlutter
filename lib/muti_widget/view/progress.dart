import 'package:flutter/material.dart';

class ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress组件"),
      ),
      body:Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: Colors.red,
            value: 0.1,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            value: 0.2,
            strokeWidth: 3,
          )
        ],
      ),
    );
  }
}
