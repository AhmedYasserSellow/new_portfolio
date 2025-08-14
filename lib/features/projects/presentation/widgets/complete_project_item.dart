import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/buttons.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/completed_apps_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CompleteProjectItem extends StatelessWidget {
  const CompleteProjectItem({
    super.key,
    required this.complateProjectModel,
  });

  final CompleteProjectModel complateProjectModel;

  @override
  Widget build(BuildContext context) {
    final String skill = complateProjectModel.skills.join(' ');
    return ThreeRowContainer(
      firstChild: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: complateProjectModel.photoLink.startsWith('http')
                ? NetworkImage(complateProjectModel.photoLink) as ImageProvider
                : AssetImage(complateProjectModel.photoLink),
          ),
        ),
      ),
      secondChild: Text(
        skill,
        style: AppTextStyles.regular16Grey(context),
      ),
      thirdChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            complateProjectModel.name,
            style: AppTextStyles.medium24White(context),
          ),
          const SizedBox(height: 16),
          Text(
            complateProjectModel.description,
            style: AppTextStyles.regular16White(context),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              if (complateProjectModel.liveLink != null)
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: PrimaryBorderButton(
                    onTap: () async {
                      await launchUrlString(complateProjectModel.liveLink!);
                    },
                    text: 'Live <~>',
                  ),
                ),
              if (complateProjectModel.githubLink != null)
                SecondaryBorderButton(
                  onTap: () async {
                    await launchUrlString(complateProjectModel.githubLink!);
                  },
                  text: 'GitHub >=',
                ),
            ],
          ),
        ],
      ),
    );
  }
}
