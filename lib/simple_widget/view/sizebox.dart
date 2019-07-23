import 'package:flutter/material.dart';

class SizeBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizeBox组件"),
      ),
      body: SizedBox(
        child: Container(
          color: Colors.red,
          width: 10,
          height: 300,
        ),
        width: 200,
        height:200,
      ),
    );
  }
}
