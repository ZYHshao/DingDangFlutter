import 'package:flutter/material.dart';

class FormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Form组件"),
      ),
      body: Form(child: Column(
        children: <Widget>[
          Text("用户名"),
          TextFormField(),
          Text("密码"),
          TextFormField(),
          Text("兴趣爱好"),
          DropdownButtonFormField(items: [
            DropdownMenuItem(child: Text("篮球")),
            DropdownMenuItem(child: Text("足球")),
            DropdownMenuItem(child: Text("排球")),
          ])

        ],
      ))
      ,
    );
  }
}
