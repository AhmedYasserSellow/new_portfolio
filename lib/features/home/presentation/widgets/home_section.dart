import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/desktop/home_about_me_section_desktop.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/mobile/home_about_me_section_mobile.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/quote_widget.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 32,
        ),
        AdaptiveLayout(
          mobile: (context) => HomeAboutMeSectionMobile(),
          tablet: (context) => HomeAboutMeSectionDesktop(),
          desktop: (context) => HomeAboutMeSectionDesktop(),
        ),
        SizedBox(height: 112),
        QuoteWidget(),
      ],
    );
  }
}
