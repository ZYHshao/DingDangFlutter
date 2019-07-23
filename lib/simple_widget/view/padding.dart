import 'package:flutter/material.dart';

class PaddingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding组件"),
      ),
      body: Padding(
        child: Container(
          color: Colors.red,
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
