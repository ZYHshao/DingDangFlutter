import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Container组件"),
      ),
      body: Container(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            image: AssetImage("assets/iconImg.png")
          ),
          border: Border(
            top: BorderSide(
              color: Colors.lightGreenAccent,
              width: 4,
              style: BorderStyle.solid,
            )
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(20,20)
            ),
            BoxShadow(
                color: Colors.brown,
                offset: Offset(-20,-20)
            )
          ],
          gradient: SweepGradient(
            colors: [
              Colors.lightBlue,
              Colors.orange
            ],
            stops: [
              0,0.5
            ]
          ),
          shape: BoxShape.rectangle,
        ),
        transform: Matrix4.rotationZ(-.2),
        margin: EdgeInsets.all(100),
        padding: EdgeInsets.all(10),
        constraints: BoxConstraints(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 100),
      ),
    );
  }
}
