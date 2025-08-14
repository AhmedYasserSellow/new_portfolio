import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/social_media_icon.dart';
import 'package:flutter/material.dart';

class SocialMediaVerticalBar extends StatelessWidget {
  const SocialMediaVerticalBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        SizedBox(
          height: 120,
          child: VerticalDivider(
            width: 1,
            color: AppColors.secondaryColor,
          ),
        ),
        SocialMediaIcon(
          socialMediaModel: FakeData.personalDataModel.github,
        ),
        SocialMediaIcon(
          socialMediaModel: FakeData.personalDataModel.linkedin,
        ),
        SocialMediaIcon(
          socialMediaModel: FakeData.personalDataModel.facebook,
        ),
      ],
    );
  }
}
