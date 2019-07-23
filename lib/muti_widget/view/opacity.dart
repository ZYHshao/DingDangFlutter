import 'package:flutter/material.dart';

class OpacityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity组件"),
      ),
      body:Opacity(
        child: Image.asset("assets/iconImg.png"),
        opacity: 0.5,
      )
    );
  }
}
