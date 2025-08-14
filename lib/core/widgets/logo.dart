import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 16,
          height: 16,
        ),
        Text(
          'Ahmed',
          style: AppTextStyles.bold16White(context),
        ),
      ],
    );
  }
}
