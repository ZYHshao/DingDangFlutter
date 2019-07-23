import 'package:flutter/material.dart';

class ColorAnimationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ColorAnimationViewState();
  }
}

class _ColorAnimationViewState extends State<ColorAnimationView> with SingleTickerProviderStateMixin {
  Animation<Color> animation;
  AnimationController controller;

  @override
  initState(){
    super.initState();
    //创建AnimationController对象，设置动画时间为300毫秒
    controller = AnimationController(lowerBound: 0,upperBound: 1,duration: Duration(milliseconds:300),vsync: this);
    //创建Tween对象，设置起始值为0 结束值为300 并创建Aniamtion对象
    animation = ColorTween(begin: Colors.red, end: Colors.orange).animate(controller);
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
        title: Text("颜色渐变动画"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: animation.value,
              width: 100 ,
              height: 100 ,
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
