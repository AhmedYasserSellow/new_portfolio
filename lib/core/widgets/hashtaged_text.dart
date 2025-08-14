import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HashtagedText extends StatelessWidget {
  const HashtagedText({super.key, required this.text, required this.isActive});
  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: '#',
          style: AppTextStyles.regular16Primary(context),
          children: <TextSpan>[
            TextSpan(
              text: text,
              style: isActive
                  ? AppTextStyles.medium16White(context)
                  : AppTextStyles.medium16Grey(context),
            ),
          ]),
    );
  }
}

class HashtagedTextHeader extends StatelessWidget {
  const HashtagedTextHeader({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '#',
        style: AppTextStyles.medium32Primary(context),
        children: [
          TextSpan(
            text: text,
            style: AppTextStyles.medium32White(context),
          ),
        ],
      ),
    );
  }
}

class SlashedTextHeader extends StatelessWidget {
  const SlashedTextHeader({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '/',
        style: AppTextStyles.semiBold32Primary(context),
        children: [
          TextSpan(
            text: text,
            style: AppTextStyles.semiBold32White(context),
          ),
        ],
      ),
    );
  }
}
