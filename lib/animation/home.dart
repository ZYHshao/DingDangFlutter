import 'package:flutter/material.dart';
import 'view/scale.dart';
import 'view/color.dart';
import 'view/rotate.dart';
import 'view/curve.dart';
import 'view/list.dart';
import 'view/hero.dart';
import 'view/listener.dart';
import 'view/gesture.dart';
import 'view/lottie.dart';
import 'view/flare.dart';
import 'view/refresh.dart';

class AnimationHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> _titles = ["缩放动画", "颜色渐变动画", "旋转动画", "弹性动画", "列表动画", "共享元素动画", "触摸事件", "手势事件", "Lottie动画", "Flare动画", "列表交互"];
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              child: Text(_titles[index],
                  style: TextStyle(fontSize: 20, color: Colors.amber[800])),
              padding: EdgeInsets.only(left: 20, top: 20),
              height: 64,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  border: Border(
                      bottom: BorderSide(color: Colors.amber[800], width: 2))),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                switch (index) {
                  case 0:
                    return ScaleAnimationView();
                  case 1:
                    return ColorAnimationView();
                  case 2:
                    return RotateAnimationView();
                  case 3:
                    return CurveAnimationView();
                  case 4:
                    return ListAnimationView();
                  case 5:
                    return HeroAnimationView();
                  case 6:
                    return ListenerView();
                  case 7:
                    return GestureView();
                  case 8:
                    return LottieView();
                  case 9:
                    return FlareView();
                  case 10:
                    return RefreshViewView();
                  default:
                    return Container();
                }
                ;
              }));
            },
          );
        },
        itemCount: _titles.length,
      ),
    );
  }
}
