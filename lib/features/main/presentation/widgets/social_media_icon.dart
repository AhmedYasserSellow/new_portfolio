import 'package:ahmed_yasser_portfolio/features/main/data/models/social_media_model.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
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
      child: SvgPicture.asset(
        socialMediaModel.iconPath,
        width: 32,
        height: 32,
      ),
    );
  }
}
