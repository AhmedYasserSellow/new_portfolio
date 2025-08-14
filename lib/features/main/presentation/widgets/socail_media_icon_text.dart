import 'package:ahmed_yasser_portfolio/features/main/data/models/social_media_model.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/social_media_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaIconText extends StatelessWidget {
  const SocialMediaIconText({
    super.key,
    required this.socialMediaModel,
  });
  final SocialMediaModel socialMediaModel;
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: () async {
        await launchUrlString(socialMediaModel.url);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SocialMediaIcon(
            socialMediaModel: socialMediaModel,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            socialMediaModel.displayName ?? '',
            style: AppTextStyles.regular16Grey(context),
          )
        ],
      ),
    );
  }
}
