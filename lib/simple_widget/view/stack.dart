import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack组件"),
      ),
      body: Stack(
        children: <Widget>[
//          Container(
//            color: Colors.red,
//            width: 200,
//            height: 200,
//          ),
//          Container(
//            color: Colors.blue,
//            width: 100,
//            height: 100,
//          ),
          Positioned(
            child: Container(
              color: Colors.orange,
            ),
            left: 100,
            right: 100,
            top: 250,
            height: 100,
          )
        ],
      ),
    );
  }
}
