import 'package:flutter/material.dart';
import 'dart:math';

class RotateAnimationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RotateAnimationViewState();
  }
}

class _RotateAnimationViewState extends State<RotateAnimationView>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  initState() {
    super.initState();
    //创建AnimationController对象，设置动画时间为300毫秒
    controller = AnimationController(
        lowerBound: 0,
        upperBound: 1,
        duration: Duration(milliseconds: 300),
        vsync: this);
    //创建Tween对象，设置起始值为0 结束值为300 并创建Aniamtion对象
    animation = Tween<double>(begin: 0, end: pi).animate(controller);
    //添加值变化的监听
    animation.addListener(() {
      //刷新界面
      if (animation.status == AnimationStatus.completed) {
        controller.reverse();
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("旋转动画"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.red,
                width: 100,
                height: 100,
                transform: Matrix4.rotationZ(animation.value)),
            RaisedButton(
              child: Text("执行动画"),
              onPressed: () {
                controller.forward();
              },
            )
          ],
        ),
      ),
    );
  }
}
