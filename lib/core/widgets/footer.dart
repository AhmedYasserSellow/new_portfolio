import 'package:ahmed_yasser_portfolio/core/backend/personal_data.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/logo.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/social_media_icon.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AdaptiveLayout(
          desktop: (context) => SizedBox(height: 32),
          mobile: (context) => SizedBox(height: 16),
          tablet: (context) => SizedBox(height: 24),
        ),
        Container(
          height: 1,
          color: AppColors.secondaryColor,
        ),
        AdaptiveLayout(
          desktop: (context) => SizedBox(height: 32),
          mobile: (context) => SizedBox(height: 16),
          tablet: (context) => SizedBox(height: 24),
        ),
        AdaptiveLayout(
          desktop: (context) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.desktopPadding,
            ),
            child: _buildFooterContent(context),
          ),
          mobile: (context) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.mobilePadding,
            ),
            child: _buildFooterContent(context),
          ),
          tablet: (context) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.tabletPadding,
            ),
            child: _buildFooterContent(context),
          ),
        ),
      ],
    );
  }

  Widget _buildFooterContent(BuildContext context) {
    return Column(
      children: [
        AdaptiveLayout(
          desktop: (context) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Logo(),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        'ahmedyasser3554@gmail.com',
                        style: AppTextStyles.regular16Grey(context),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Software Engineer and Flutter developer',
                    style: AppTextStyles.regular16White(context),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Media', style: AppTextStyles.medium24White(context)),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    spacing: 16,
                    children: [
                      SocialMediaIcon(
                        socialMediaModel: PersonalData.personalData.github,
                      ),
                      SocialMediaIcon(
                        socialMediaModel: PersonalData.personalData.linkedin,
                      ),
                      SocialMediaIcon(
                          socialMediaModel: PersonalData.personalData.discord),
                    ],
                  ),
                ],
              ),
            ],
          ),
          mobile: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    'ahmedyasser3554@gmail.com',
                    style: AppTextStyles.regular16Grey(context),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Software Engineer and Flutter developer',
                style: AppTextStyles.regular16White(context),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text('Media', style: AppTextStyles.medium24White(context)),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  SocialMediaIcon(
                    socialMediaModel: PersonalData.personalData.github,
                  ),
                  SocialMediaIcon(
                    socialMediaModel: PersonalData.personalData.linkedin,
                  ),
                  SocialMediaIcon(
                      socialMediaModel: PersonalData.personalData.discord),
                ],
              ),
            ],
          ),
          tablet: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    'ahmedyasser3554@gmail.com',
                    style: AppTextStyles.regular16Grey(context),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Software Engineer and Flutter developer',
                style: AppTextStyles.regular16White(context),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 24,
              ),
              Text('Media', style: AppTextStyles.medium24White(context)),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  SocialMediaIcon(
                    socialMediaModel: PersonalData.personalData.github,
                  ),
                  SocialMediaIcon(
                    socialMediaModel: PersonalData.personalData.linkedin,
                  ),
                  SocialMediaIcon(
                      socialMediaModel: PersonalData.personalData.discord),
                ],
              ),
            ],
          ),
        ),
        AdaptiveLayout(
          desktop: (context) => SizedBox(height: 48),
          mobile: (context) => SizedBox(height: 24),
          tablet: (context) => SizedBox(height: 32),
        ),
        AdaptiveLayout(
          desktop: (context) => Text(
            'Copyright © 2025. Made by Ahmed',
            style: AppTextStyles.regular16Grey(context),
          ),
          mobile: (context) => Text(
            'Copyright © 2025. Made by Ahmed',
            style: AppTextStyles.regular16Grey(context),
            textAlign: TextAlign.center,
          ),
          tablet: (context) => Text(
            'Copyright © 2025. Made by Ahmed',
            style: AppTextStyles.regular16Grey(context),
            textAlign: TextAlign.center,
          ),
        ),
        AdaptiveLayout(
          desktop: (context) => SizedBox(height: 32),
          mobile: (context) => SizedBox(height: 16),
          tablet: (context) => SizedBox(height: 24),
        ),
      ],
    );
  }
}
