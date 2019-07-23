import 'package:flutter/material.dart';

class ListAnimationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListAnimationViewState();
  }
}

class _ListAnimationViewState extends State<ListAnimationView> {
  //用来进行列表元素 拆入与删除操作
  static GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  var list =  AnimatedList(
    itemBuilder: (BuildContext contenxt,int index, Animation<double> animation){
      return AnimationItem(animation: animation,);
    },
    initialItemCount: 3,
    key: _listKey,
  );
  //插入元素
  _insert(){
    _listKey.currentState.insertItem(0,duration: Duration(milliseconds: 300));
  }
  //删除元素
  _remove(){
    _listKey.currentState.removeItem(0, (BuildContext contenxt, Animation<double> animation){
      return AnimationItem(animation: animation,);
    },duration: Duration(milliseconds: 300));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("列表动画"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: _remove,
              tooltip: '删除',
            ),
            IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: _insert,
              tooltip: '插入',
            ),
          ],
        ),
        body: new Builder(builder: (BuildContext context){
          return Container(
            child: list,
          );
        })
    );
  }

}

class AnimationItem extends AnimatedWidget {
  AnimationItem({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    var heightAni = Tween<double>(begin: 0,end: 30).animate(animation);
    return Container(
        height: heightAni.value,
        child: Text("HAHAHAHA"),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0)
    );
  }
}

