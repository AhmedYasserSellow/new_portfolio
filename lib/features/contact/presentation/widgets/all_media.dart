import 'package:ahmed_yasser_portfolio/core/backend/personal_data.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/social_media_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/socail_media_icon_text.dart';
import 'package:flutter/material.dart';

class AllMedia extends StatelessWidget {
  const AllMedia({super.key});

  List<SocialMediaModel> _getAllSocialMedia() {
    final personalData = PersonalData.personalData;
    return [
      personalData.discord,
      personalData.github,
      personalData.linkedin,
      personalData.facebook,
      personalData.whatsapp,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final allSocialMedia = _getAllSocialMedia();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HashtagedTextHeader(text: 'all-media'),
        SizedBox(
          height: 20,
        ),
        AdaptiveLayout(
          desktop: (context) => Wrap(
            spacing: 22,
            runSpacing: 16,
            children: allSocialMedia
                .map((socialMedia) => SocialMediaIconText(
                      socialMediaModel: socialMedia,
                    ))
                .toList(),
          ),
          mobile: (context) => Wrap(
            spacing: 22,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: allSocialMedia
                .map((socialMedia) => SocialMediaIconText(
                      socialMediaModel: socialMedia,
                    ))
                .toList(),
          ),
          tablet: (context) => Wrap(
            spacing: 22,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: allSocialMedia
                .map((socialMedia) => SocialMediaIconText(
                      socialMediaModel: socialMedia,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
