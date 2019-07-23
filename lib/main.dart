import 'package:flutter/material.dart';
import 'dart_language//home.dart';
import 'simple_widget/home.dart';
import 'muti_widget/home.dart';
import 'animation/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DDFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MyAppHome(),
    );
  }
}

class _MyAppHome extends StatefulWidget {
  @override
  _MyAppHomeState createState() {
    // TODO: implement createState
    return _MyAppHomeState();
  }
}

class _MyAppHomeState extends State<_MyAppHome> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> _widgets = _buildWidgetOptions();

    return Scaffold(
      appBar: AppBar(
        title: Text("DDFlutter"),
      ),
      body: Center(
        child: _widgets[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.language),
            title: Text("Dart语法")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
          title: Text("简单组件")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.crop),
            title: Text("高级组件")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("动画与手势")
        ),

      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (int index){
        setState(() {
          _selectedIndex = index;
        });
      },),
    );
  }

  List<Widget> _buildWidgetOptions() {
    List<Widget> _widgetOptions = <Widget>[
      DartLanguageHomeView(),
      SingleWidgetHomeView(),
      MutiWidgetHomeView(),
      AnimationHomeView()
    ];
    return _widgetOptions;
  }
}
