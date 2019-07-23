import 'package:flutter/material.dart';

class FlutterIconView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterIcon组件"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              FlutterLogo()
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
