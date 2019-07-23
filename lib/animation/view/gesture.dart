import 'package:flutter/material.dart';

class GestureView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GestureViewState();
  }
}

class _GestureViewState extends State<GestureView> {
  String eventString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("手势事件"),
        ),
        body: new Builder(builder: (BuildContext context) {
          return Column(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: 320,
                  height: 368,
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                ),
                onDoubleTap: () {
                  setState(() {
                    eventString = "双击";
                  });
                },
                onLongPress: () {
                  setState(() {
                    eventString = "长按";
                  });
                },
                onHorizontalDragUpdate: (DragUpdateDetails detail) {
                  setState(() {
                    eventString = "水平拖拽";
                  });
                  print(detail);
                },
              ),
              Center(
                child: Text(eventString),
              )
            ],
          );
        }));
  }
}
