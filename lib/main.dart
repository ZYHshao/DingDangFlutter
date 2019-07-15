import 'package:flutter/material.dart';
import 'dart_language//home.dart';

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
            title: Text("布局容器")
        ),
      ],
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
    const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> _widgetOptions = <Widget>[
      SingleWidgetHomeView(),
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
      Text(
        'Index 2: Business',
        style: optionStyle,
      ),
    ];
    return _widgetOptions;
  }
}
