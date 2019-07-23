import 'package:flutter/material.dart';

class ExpansionPanelListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelList组件"),
      ),
      body: SingleChildScrollView(
          child: ExpansionPanelList(
        children: [
          ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Text("扩展列表"),
                );
              },
              body: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Text("选项A"),
              ),
              isExpanded: true),
          ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Text("扩展列表"),
                );
              },
              body: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Text("选项A"),
              ),
              isExpanded: false)
        ],
      )),
    );
  }
}
