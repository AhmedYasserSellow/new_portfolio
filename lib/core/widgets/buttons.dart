import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrimaryBorderButton extends StatelessWidget {
  const PrimaryBorderButton({
    super.key,
    required this.text,
    this.icon = FontAwesomeIcons.arrowRight,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: AppTextStyles.medium16White(context),
            ),
            // const SizedBox(width: 8),
            // Icon(
            //   icon,
            //   color: AppColors.primaryTextColor,
            //   size: 16,
            // ),
          ],
        ),
      ),
    );
  }
}

class SecondaryBorderButton extends StatelessWidget {
  const SecondaryBorderButton({
    super.key,
    required this.text,
    this.icon = FontAwesomeIcons.arrowRight,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondaryTextColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: AppTextStyles.medium16Grey(context),
            ),
            // const SizedBox(width: 8),
            // Icon(
            //   icon,
            //   color: AppColors.secondaryTextColor,
            //   size: 16,
            // ),
          ],
        ),
      ),
    );
  }
}
