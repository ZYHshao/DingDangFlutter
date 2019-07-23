import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Table组件"),
        ),
        body: Table(
            border: TableBorder.all(
              color: Colors.grey,
              width: 2,
              style: BorderStyle.solid,
            ),
            children: [
              TableRow(children: [
                TableCell(
                  child: Text("姓名"),
                ),
                TableCell(
                  child: Text("课程"),
                )
              ]),
              TableRow(children: [
                TableCell(
                  child: Text("珲少"),
                ),
                TableCell(
                  child: Text("Flutter极速入门教程"),
                )
              ])
            ]));
  }
}
