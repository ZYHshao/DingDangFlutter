import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Text组件"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                "欢迎学习Flutter"
              ),
              Text("欢迎学习Flutter应用开发",style: TextStyle(fontSize: 20,height: 2,color: Color(0xffff0000),decoration:TextDecoration.underline,decorationColor: Color(0xffff0000),decorationStyle: TextDecorationStyle.double,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,letterSpacing: 5))
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
