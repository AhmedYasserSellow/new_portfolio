import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/about_me.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/desktop/home_about_me_section_header_desktop.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/mobile/home_about_me_section_header_mobile.dart';
import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdaptiveLayout(
          mobile: (context) => HomeAboutMeSectionHeaderMobile(),
          desktop: (context) => HomeAboutMeSectionHeaderDesktop(),
        ),
        SizedBox(
          height: 24,
        ),
        AboutMe(),
      ],
    );
  }
}
