import 'package:flutter/material.dart';

class CustomPaintView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("CustomPaint组件"),
        ),
        body:CustomPaint(
          painter: _MyPainter(),
          child: Center(
            child: Text(
              'CustomPaint组件',
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                color: Color(0x44000000),
              ),
            ),
          ),
        )
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 创建画笔
    Paint p = Paint();
    // 设置画笔颜色
    p.color = Colors.red;
    // 设置绘制模式 stroke描边 fill填充
    p.style = PaintingStyle.stroke;
    // 设置画笔宽度
    p.strokeWidth = 3;
    canvas.drawCircle(Offset(size.width/2, size.height/2),size.width/3,p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
