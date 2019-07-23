import 'package:flutter/material.dart';

class ScaffoldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold组件"),
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.print), title: Text("打印")),
          BottomNavigationBarItem(icon: Icon(Icons.stop), title: Text("停止"))
        ],
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.grey,
      bottomSheet: BottomSheet(
        onClosing: (){
          print("close");
        },
        builder: (BuildContext context){
          return Container(
            child: Text("抽屉",textAlign: TextAlign.center,),
            width: MediaQuery.of(context).size.width,
            height: 200,
          );
        },
      ),

    );
  }
}
