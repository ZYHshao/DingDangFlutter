import 'package:flutter/material.dart';

class PlaceHolderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PlaceHolder组件"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Placeholder(color: Colors.grey,fallbackHeight: 100,fallbackWidth: 100,strokeWidth: 1)
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
