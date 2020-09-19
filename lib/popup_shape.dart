library popup_shape;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popup_shape/shape_painter.dart';

enum PopupArrowPosition {
  BottomLeft,
  BottomCenter,
  BottomRight,
  CenterRight,
  CenterLeft,
  TopLeft,
  TopCenter,
  TopRight
}

class PopupShape extends StatelessWidget {
  final Color bgColor;
  final Color shadowColor;
  final double shadowRadius;
  final PopupArrowPosition position;
  final Text child;
  final double width;

  const PopupShape({
    this.bgColor = Colors.blue,
    this.shadowColor = Colors.grey,
    this.shadowRadius = 3.0,
    this.position = PopupArrowPosition.CenterLeft,
    this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      child: CustomPaint(
        painter: ShapePainter(
          bgColor: bgColor,
          shadowColor: shadowColor,
          shadowRadius: shadowRadius,
          position: position,
        ),
        child: Center(child: child),
      ),
    );
  }
}
