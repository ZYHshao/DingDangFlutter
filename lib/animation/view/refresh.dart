import 'package:flutter/material.dart';

class RefreshViewView extends StatelessWidget {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(
            (){
          if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent) {
            print('loadMore');
          }
        });
    return Scaffold(
        appBar: AppBar(
          title: Text("列表交互"),
        ),
        body: RefreshIndicator(
          child: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index){
            return Container(
              color: Colors.red,
              child: Container(
                child: Text("数据${index}"),
                height: 80,
              ),
              margin: EdgeInsets.only(bottom: 10),
            );
          },controller: _scrollController,),
          onRefresh: (){
            print("refresh");
            return Future.delayed(Duration(seconds: 3));
          },
        )
    );
  }
}
