import 'package:flutter/material.dart';
import 'view/about_var.dart';
import 'view/var_type.dart';
import 'view/string_type.dart';
import 'view/bool_type.dart';

class SingleWidgetHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> _titles = ["关于变量", "数值类型", "字符串类型", "布尔类型"];
    return Container(
      child: ListView.builder(itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          child: Container(
            child: Text(_titles[index], style: TextStyle(fontSize: 20, color: Colors.amber[800])),
            padding: EdgeInsets.only(left: 20,top: 20),
            height: 64,
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                border: Border(
                    bottom: BorderSide(
                        color: Colors.amber[800],
                        width: 2
                    )
                )
            ),
          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              switch (index) {
                case 0: return AboutVarView();
                case 1: return VarTypeView();
                case 2: return VarStringView();
                case 3: return VarBoolView();
                default:
                  return Container();
              };
            }));
          },
        );
      }, itemCount: _titles.length,),
    );
  }
}