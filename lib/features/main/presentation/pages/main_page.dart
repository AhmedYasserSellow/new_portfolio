import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/pages/desktop_main_page.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/pages/tablet_main_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobile: (context) => TabletMainPage(),
      tablet: (context) => TabletMainPage(),
      desktop: (context) => DesktopMainPage(),
    );
  }
}
