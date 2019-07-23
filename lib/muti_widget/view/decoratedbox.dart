import 'package:flutter/material.dart';

class DecorateedBoxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("DecorateedBox组件"),
        ),
        body: Container(
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red),
          ),
          width: 200,
          height: 200,
        ));
  }
}
