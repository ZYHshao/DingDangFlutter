import 'package:flutter/material.dart';

class HeroAnimationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HeroAnimationViewState();
  }
}

class _HeroAnimationViewState extends State<HeroAnimationView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("共享元素动画"),
        ),
        body: new Builder(builder: (BuildContext context){
          return Column(
              children:[
                // 定义Hero组件
                Hero(
                  child:Image.asset("assets/iconImg.png",width: 100,height: 50,),
                  tag: 'HeroTag',
                ),
                // 点击按钮进行页面跳转
                RaisedButton(
                  child: Text("跳转"),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return OtherPage(title: "新页面",);
                    }));
                  },
                )
              ]
          );
        })
    );
  }
}

// 新页面
class OtherPage extends StatefulWidget {
  OtherPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: new Builder(builder: (BuildContext context){
          return Center(
            // 注意共享元素组件的tag值要保持一致
            child: Hero(
              child:Image.asset("assets/iconImg.png",width: 200,height: 150,),
              tag: 'HeroTag',
            ),
          );
        })
    );
  }
}


