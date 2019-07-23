import 'package:flutter/material.dart';

class OffstageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Offstage组件"),
      ),
      body: Offstage(
        child: Container(
          color: Colors.red,
        ),
        offstage: true,
      ),
    );
  }
}
