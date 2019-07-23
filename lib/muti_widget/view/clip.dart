import 'package:flutter/material.dart';

class ClipView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Clip组件"),
        ),
        body:Column(
          children: <Widget>[
//            ClipOval(
//              child: Container(
//                color: Colors.red,
//                width: 100,
//                height: 100,
//              ),
//              clipBehavior: Clip.hardEdge,
//            ),
//            ClipRect(
//              child: Align(
//                alignment: Alignment.topCenter,
//                heightFactor: 0.5,
//                child: Image.asset("assets/iconImg.png"),
//              ),
//            ),
            ClipPath(
              child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              clipper: _MyClipper(),
            )
          ],
        )
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path p = Path();
    p.moveTo(0, 0);
    p.lineTo(50, 50);
    p.lineTo(100, 150);
    p.lineTo(100, 200);
    p.lineTo(30, 200);
    p.lineTo(0,0);
    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
