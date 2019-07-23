import 'package:flutter/material.dart';
import 'package:lottie_flutter/lottie_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class LottieView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LottieViewState();
  }
}

class _LottieViewState extends State<LottieView> with SingleTickerProviderStateMixin {
  // Lottie动画组件
  LottieComposition _composition;
  // 动画控制器
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // 加载动画资源
    loadAsset("assets/lottie.json").then((LottieComposition composition) {
      setState(() {
        _composition = composition;
      });
    });
    // 初始化控制器
    _controller = new AnimationController(
      duration: Duration(milliseconds: 1),
      vsync: this,
    );
    _controller.addListener((){
      setState(() {
      });
    });
  }

  // 加载资源
  Future<LottieComposition> loadAsset(String assetName) async {
    return await rootBundle
        .loadString(assetName)
        .then<Map<String, dynamic>>((String data) => json.decode(data))
        .then((Map<String, dynamic> map) => new LottieComposition.fromMap(map));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Lottie动画"),
        ),
        body: new Builder(builder: (BuildContext context){
          return Container(
            child: Center(
              child: Column(
                children: <Widget>[
                Lottie(
                  composition: _composition,
                  size: const Size(300, 300),
                  controller: _controller,
                ),
                  RaisedButton(child: Text("执行动画"),
                  onPressed: (){
                    _controller.repeat();
                  },)
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            color: Colors.red,
          );
        })
    );
  }
}
