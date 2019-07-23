import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class FlareView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlareViewState();
  }
}

class _FlareViewState extends State<FlareView> {




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Flare动画"),
        ),
        body: new Builder(builder: (BuildContext context){
          return Container(
            child: Center(
              child: FlareActor("assets/loading.flr", alignment:Alignment.center, fit:BoxFit.contain, animation:"loading"),
            ),
            color: Colors.red,
          );
        })
    );
  }
}
