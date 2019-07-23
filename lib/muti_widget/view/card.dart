import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Card组件"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 100,
            ),
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            borderOnForeground: false,
            margin: EdgeInsets.all(30),
            elevation: 15,
          ),
          Divider(
            height: 2,
            indent: 30,
            endIndent: 30,
            color: Colors.black26,
          ),
          Card(
            child: Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 100,
            ),
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            borderOnForeground: false,
            margin: EdgeInsets.all(30),
            elevation: 15,
          ),
          Divider(
            height: 2,
            indent: 30,
            endIndent: 30,
            color: Colors.black26,
          ),
        ],
      )
      ,
    );
  }
}
