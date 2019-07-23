import 'package:flutter/material.dart';

class AspectRadioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRadio组件"),
      ),
      body: AspectRatio (
        child: Container(
          color: Colors.red,
        ),
        aspectRatio: 2,
      ),
    );
  }
}
