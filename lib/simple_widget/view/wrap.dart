import 'package:flutter/material.dart';

class WrapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap组件"),
      ),
      body: Wrap(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
          ),
        ],
        direction: Axis.horizontal,
        alignment: WrapAlignment.end,
        spacing: 20,
        runAlignment: WrapAlignment.start,
        runSpacing: 20,
        crossAxisAlignment: WrapCrossAlignment.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
