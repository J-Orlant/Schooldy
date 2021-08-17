import 'dart:ui';

import 'package:flutter/widgets.dart';

/// {@template custom_rect_tween}
/// Linear RectTween with a [Curves.easeOut] curve.
///
/// Less dramatic that the regular [RectTween] used in [Hero] animations.
/// {@endtemplate}
class CustomRectTween extends RectTween {
  /// {@macro custom_rect_tween}
  CustomRectTween({
    required this.begin,
    required this.end,
  });

  final Rect? begin;
  final Rect? end;

  @override
  Rect lerp(double t) {
    double elasticCurveValue = Curves.easeOut.transform(t);
    return Rect.fromLTRB(
      lerpDouble(begin!.left, end!.left, elasticCurveValue),
      lerpDouble(begin!.top, end!.top, elasticCurveValue),
      lerpDouble(begin!.right, end!.right, elasticCurveValue),
      lerpDouble(begin!.bottom, end!.bottom, elasticCurveValue),
    );
  }

  double lerpDouble(num begin, num end, double t) {
    return begin + (end - begin) * t;
  }
}
