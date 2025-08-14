import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/home_contact_me_section_header.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/socail_media_icon_text.dart';
import 'package:flutter/material.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeContactMeSectionHeader(),
        SizedBox(
          height: 48,
        ),
        AdaptiveLayout(
          desktop: (context) => Row(
            children: [
              Expanded(
                child: Text(
                  'I\'m interested in freelance opportunities. However, if you have other request or question, don\'t hesitate to contact me',
                  style: AppTextStyles.medium16Grey(context),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Spacer(),
                    OneRowContainer(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Message me here',
                            style: AppTextStyles.semiBold16White(context),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SocialMediaIconText(
                              socialMediaModel:
                                  FakeData.personalDataModel.discord),
                          SizedBox(
                            height: 8,
                          ),
                          SocialMediaIconText(
                              socialMediaModel:
                                  FakeData.personalDataModel.email),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
          mobile: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m interested in freelance opportunities. However, if you have other request or question, don\'t hesitate to contact me',
                style: AppTextStyles.medium16Grey(context),
              ),
              SizedBox(height: 32),
              Center(
                child: OneRowContainer(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message me here',
                        style: AppTextStyles.semiBold16White(context),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SocialMediaIconText(
                          socialMediaModel: FakeData.personalDataModel.discord),
                      SizedBox(
                        height: 8,
                      ),
                      SocialMediaIconText(
                          socialMediaModel: FakeData.personalDataModel.email),
                    ],
                  ),
                ),
              ),
            ],
          ),
          tablet: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I\'m interested in freelance opportunities. However, if you have other request or question, don\'t hesitate to contact me',
                style: AppTextStyles.medium16Grey(context),
              ),
              SizedBox(height: 32),
              Center(
                child: OneRowContainer(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message me here',
                        style: AppTextStyles.semiBold16White(context),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SocialMediaIconText(
                          socialMediaModel: FakeData.personalDataModel.discord),
                      SizedBox(
                        height: 8,
                      ),
                      SocialMediaIconText(
                          socialMediaModel: FakeData.personalDataModel.email),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 70,
        // ),
      ],
    );
  }
}
