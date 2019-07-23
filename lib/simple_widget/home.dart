import 'package:flutter/material.dart';
import 'view/image.dart';
import 'view/text.dart';
import 'view/icon.dart';
import 'view/button.dart';
import 'view/scaffold.dart';
import 'view/flutter_icon.dart';
import 'view/placeholder.dart';
import 'view/container.dart';
import 'view/padding.dart';
import 'view/center.dart';
import 'view/align.dart';
import 'view/fittedbox.dart';
import 'view/aspectratio.dart';
import 'view/boxconstraints.dart';
import 'view/intrinsicheight.dart';
import 'view/limitbox.dart';
import 'view/offstage.dart';
import 'view/overflowbox.dart';
import 'view/sizebox.dart';
import 'view/transform.dart';
import 'view/row.dart';
import 'view/column.dart';
import 'view/stack.dart';
import 'view/indexstack.dart';
import 'view/wrap.dart';

class SingleWidgetHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> _titles = ["Image组件", "Text组件", "Icon组件", "Button组件", "Scaffold组件", "FlutterLogo", "Placeholder组件", "Container容器", "Padding容器", "Center容器", "Align容器", "Fittedbox容器", "AspectRatio容器", "ContstraintsBox容器", "IntrinsicHeight容器", "LimitedBox容器", "Offstage容器", "OverflowBox容器", "SizeBox容器", "Transform容器", "Row容器", "Column容器", "Stack容器", "IndexedStack容器", "Wrap容器"];
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              child: Text(_titles[index],
                  style: TextStyle(fontSize: 20, color: Colors.amber[800])),
              padding: EdgeInsets.only(left: 20, top: 20),
              height: 64,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  border: Border(
                      bottom: BorderSide(color: Colors.amber[800], width: 2))),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                switch (index) {
                  case 0:
                    return ImageView();
                  case 1:
                    return TextView();
                  case 2:
                    return IconView();
                  case 3:
                    return ButtonView();
                  case 4:
                    return ScaffoldView();
                  case 5:
                    return FlutterIconView();
                  case 6:
                    return PlaceHolderView();
                  case 7:
                    return ContainerView();
                  case 8:
                  return PaddingView();
                  case 9:
                    return CenterView();
                  case 10:
                    return AlignView();
                  case 11:
                    return FittedBoxView();
                  case 12:
                    return AspectRadioView();
                  case 13:
                    return ConstrainedBoxsView();
                  case 14:
                    return IntrinsicHeightView();
                  case 15:
                    return LimitedBoxView();
                  case 16:
                    return OffstageView();
                  case 17:
                    return OverflowBoxView();
                  case 18:
                    return SizeBoxView();
                  case 19:
                    return TransformView();
                  case 20:
                    return RowView();
                  case 21:
                    return ColumnView();
                  case 22:
                    return StackView();
                  case 23:
                    return IndexedStackView();
                  case 24:
                    return WrapView();
                  default:
                    return Container();
                }
                ;
              }));
            },
          );
        },
        itemCount: _titles.length,
      ),
    );
  }
}
