import 'package:flutter/material.dart';

class ToolTipView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip组件"),
      ),
      body:Tooltip(
        child: Text("工具提示"),
        message: "提示信息",
      ),
    );
  }
}
