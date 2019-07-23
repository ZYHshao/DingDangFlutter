import 'package:flutter/material.dart';

class DialogView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("弹窗组件"),
        ),
        body: Builder(builder:(BuildContext context){
          return Column(
            children: <Widget>[
              RaisedButton(child: Text("SimpleDialog"),
                onPressed: (){
                  showDialog(context: context,
                      child:
                      SimpleDialog(
                          contentPadding: EdgeInsets.all(10.0),
                          title: new Text('我是标题'),
                          children: <Widget>[
                            new Text('内容1'),
                            new Text('内容2'),
                            new Text('内容3'),
                          ]
                      )
                  );
                },),
              RaisedButton(child: Text("AlertDialog"),onPressed: (){
                showDialog(context: context,
                  child:
                  AlertDialog(
                    title: Text("警告"),content: Text("内容部分xxxxxxx"),actions: <Widget>[RaisedButton(child: Text("按钮1")),RaisedButton(child: Text("按钮2"))],),
                );
              },),
              RaisedButton(child: Text("BottomShee"),onPressed: (){
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return new Container(
                      height: 300.0,
                      child: new Text("底部抽屉"),
                    );
                  },
                ).then((val) {
                  print("收起");
                });
              },),
              RaisedButton(child: Text("SnackBar"),onPressed: (){
                final snackBar = new SnackBar(content: new Text('这是一个SnackBar!'));
                Scaffold.of(context).showSnackBar(snackBar);
              },)
            ],
          );
        })
    );
  }
}
