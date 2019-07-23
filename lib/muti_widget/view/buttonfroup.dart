import 'package:flutter/material.dart';

class ButtonGroupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonGroup组件"),
      ),
      body: Column(
        children: <Widget>[
          PopupMenuButton(
            child: Text("弹出普通菜单"),
            itemBuilder: (BuildContext context){
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text("item1"),
                  enabled: false,
                ),
                PopupMenuItem(
                  child: Text("item2"),
                ),
                PopupMenuDivider(
                ),
                PopupMenuItem(
                  child: Text("item3"),
                ),
              ];
            },
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                child: Text("按钮1"),
                onPressed: (){},
              ),
              RaisedButton(
                child: Text("按钮2"),
                onPressed: (){},
              ),
            ],
            alignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
