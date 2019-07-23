import 'package:flutter/material.dart';
import 'view/form.dart';
import 'view/checkbox.dart';
import 'view/radio.dart';
import 'view/switch.dart';
import 'view/slider.dart';
import 'view/datepicker.dart';
import 'view/dialog.dart';
import 'view/expansionpanel.dart';
import 'view/buttonfroup.dart';
import 'view/card.dart';
import 'view/tooltip.dart';
import 'view/progress.dart';
import 'view/opacity.dart';
import 'view/decoratedbox.dart';
import 'view/clip.dart';
import 'view/custompaint.dart';
import 'view/gridview.dart';
import 'view/listview.dart';
import 'view/scroll.dart';
import 'view/table.dart';
import 'view/Flow.dart';

class MutiWidgetHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<String> _titles = ["Form组件", "CheckBox组件", "Radio组件", "Switch组件", "Slider组件", "DatePicker组件", "弹窗组件", "ExpansionPanelList组件", "按钮组", "Card组件", "ToolTip组件", "Progress组件", "Opacity组件", "DecoratedBox容器", "Clip组件", "CustomPaint组件", "GridView组件", "ListView组件", "SingleChildScrollView组件", "Table组件", "Flow组件"];
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
                    return FormView();
                  case 1:
                    return CheckBoxView();
                  case 2:
                    return RadioView();
                  case 3:
                    return SwitchView();
                  case 4:
                    return SliderView();
                  case 5:
                    return DatePickerView();
                  case 6:
                    return DialogView();
                  case 7:
                    return ExpansionPanelListView();
                  case 8:
                    return ButtonGroupView();
                  case 9:
                    return CardView();
                  case 10:
                    return ToolTipView();
                  case 11:
                    return ProgressView();
                  case 12:
                    return OpacityView();
                  case 13:
                    return DecorateedBoxView();
                  case 14:
                    return ClipView();
                  case 15:
                    return CustomPaintView();
                  case 16:
                    return GridViewView();
                  case 17:
                    return ListViewView();
                  case 18:
                    return ScrollViewView();
                  case 19:
                    return TableView();
                  case 20:
                    return FlowView();
                  default:
                    return Container();
                }
              }));
            },
          );
        },
        itemCount: _titles.length,
      ),
    );
  }
}
