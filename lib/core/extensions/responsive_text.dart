import 'package:ahmed_yasser_portfolio/core/extensions/size.dart';
import 'package:flutter/material.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';

extension FonSizeExt on int {
  double toResponsiveFontSize(BuildContext context) {
    double getScaleFactor(BuildContext context) {
      double width = context.width;
      if (width < BreakPoints.phone) {
        return width / BreakPoints.phone;
      } else if (width < BreakPoints.desktop) {
        return width / BreakPoints.desktop;
      } else {
        return width / 1920;
      }
    }

    int fontSize = this;
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.9;
    double upperLimit = fontSize * 1.1;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
