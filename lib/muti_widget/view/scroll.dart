import 'package:flutter/material.dart';

class ScrollViewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView组件"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 500,
            child: Image.asset(
              "assets/iconImg.png",
              width: 500,
            ),
          ),
        ));
  }
}
