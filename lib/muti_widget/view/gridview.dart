import 'package:flutter/material.dart';

class GridViewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView组件"),
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                crossAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.red,
                child: Text("第${index}个元素"),
              );
            }));
  }
}
