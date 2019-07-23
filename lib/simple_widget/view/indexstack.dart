import 'package:flutter/material.dart';

class IndexedStackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexedStack组件"),
      ),
      body: IndexedStack(
        children: <Widget>[
          Positioned(
            child: Container(
              color: Colors.orange,
            ),
            left: 100,
            right: 100,
            top: 250,
            height: 100,
          ),
          Positioned(
            child: Container(
              color: Colors.orange,
            ),
            left: 0,
            right: 100,
            top: 0,
            height: 100,
          ),
        ],
        index: 0,
      ),
    );
  }
}
