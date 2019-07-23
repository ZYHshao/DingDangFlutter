import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon组件"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Icon(Icons.add),
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
