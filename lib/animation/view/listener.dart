import 'package:flutter/material.dart';

class ListenerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListenerViewState();
  }
}

class _ListenerViewState extends State<ListenerView> {
  String eventString = "";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("触摸事件"),
        ),
        body: new Builder(builder: (BuildContext context){
          return Column(
            children: <Widget>[
              Listener(
                child: Container(
                  width: 320,
                  height: 300,
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                ),
                onPointerDown: (PointerDownEvent event){
                  setState(() {
                    eventString = "手指按下";
                  });
                  print(event);
                },
                onPointerUp: (PointerUpEvent event){
                  setState(() {
                    eventString = "手指抬起";
                  });
                  print(event);
                },
                onPointerCancel: (PointerCancelEvent event){
                  setState(() {
                    eventString = "触摸取消";
                  });
                  print(event);
                },
                onPointerMove: (PointerMoveEvent event){
                  setState(() {
                    eventString = "手指移动";
                  });
                  print(event);
                },
              ),
              Center(
                child: Text(eventString),
              )
            ],
          );
        })
    );
  }

}
