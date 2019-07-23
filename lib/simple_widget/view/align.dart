import 'package:flutter/material.dart';

class AlignView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Align组件"),
      ),
      body: Align (
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
        ),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
