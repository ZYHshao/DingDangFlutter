import 'package:flutter/material.dart';

class LimitedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox组件"),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 100.0,
            child: Container(
              color: Colors.blue,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}
