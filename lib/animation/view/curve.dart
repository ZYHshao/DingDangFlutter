import 'package:flutter/material.dart';

class CurveAnimationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CurveAnimationViewState();
  }
}

class _CurveAnimationViewState extends State<CurveAnimationView> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  initState(){
    super.initState();
    //创建AnimationController对象，设置动画时间为300毫秒
    controller = AnimationController(lowerBound: 0,upperBound: 1,duration: Duration(milliseconds:300),vsync: this);
    CurvedAnimation ani = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    //创建Tween对象，设置起始值为0 结束值为300 并创建Aniamtion对象
    animation = Tween<double>(begin: 0, end: 100).animate(ani);
    //添加值变化的监听
    animation.addListener((){
      //刷新界面
      if (animation.status == AnimationStatus.completed) {
        controller.reverse();
      }
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("弹簧动画"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100 + animation.value,
              height: 100 + animation.value,
            ),
            RaisedButton(
              child: Text("执行动画"),
              onPressed: (){
                controller.forward();
              },
            )
          ],
        ),
      ),
    );
  }
}
