import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SliderViewState();
  }
}

class _SliderViewState extends State<SliderView> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Switch组件"),
        ),
        body: Slider(onChanged: (v){
          setState(() {
            sliderValue = v;
          });
        },value:sliderValue)
    );
  }
}
