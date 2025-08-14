import 'package:ahmed_yasser_portfolio/core/extensions/size.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.desktop,
    required this.mobile,
    this.tablet,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder desktop;

  static bool isMobile(BuildContext context) {
    return context.width < BreakPoints.phone;
  }

  static bool isTablet(BuildContext context) {
    return context.width < BreakPoints.desktop;
  }

  static bool isDesktop(BuildContext context) {
    return context.width >= BreakPoints.desktop;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = context.width;
        if (width < BreakPoints.phone) {
          return mobile(context);
        } else if (width < BreakPoints.tablet) {
          if (tablet != null) {
            return tablet!(context);
          } else {
            return mobile(context);
          }
        } else {
          return desktop(context);
        }
      },
    );
  }
}

abstract class BreakPoints {
  static int phone = 640;
  static int tablet = 1024;
  static int desktop = 1280;
}
