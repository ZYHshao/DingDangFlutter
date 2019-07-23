import 'package:flutter/material.dart';

class FlowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Flow组件"),
      ),
      body: Flow(
        children: <Widget>[
          Container(child: Text("Item1"),color: Colors.red, width: 100,height: 100,),
          Container(child: Text("Item2"),color: Colors.red,width: 100,height: 100),
          Container(child: Text("Item3"),color: Colors.red,width: 100,height: 100),
        ],
        delegate: _MyDelegate(),
      )
    );
  }
}


class _MyDelegate extends FlowDelegate {

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = 0.0;
    var y = 100.0;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w;
        y += 100;
      } else {
        x = 0;
        y += context.getChildSize(i).height;
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return true;
  }
}