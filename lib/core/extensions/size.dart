import 'package:flutter/material.dart';

extension SizeExt on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
}
