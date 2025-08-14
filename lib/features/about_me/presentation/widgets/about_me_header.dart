import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/about_me.dart';
import 'package:flutter/material.dart';

class AboutMeHeader extends StatelessWidget {
  const AboutMeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlashedTextHeader(text: 'about-me'),
        SizedBox(
          height: 16,
        ),
        Text(
          'Who am I?',
          style: AppTextStyles.regular16White(context),
        ),
        AboutMe(),
      ],
    );
  }
}
