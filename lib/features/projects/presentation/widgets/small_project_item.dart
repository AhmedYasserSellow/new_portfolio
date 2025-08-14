import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/buttons.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/small_projects_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SmallProjectItem extends StatelessWidget {
  const SmallProjectItem({
    super.key,
    required this.smallProjectModel,
  });

  final SmallProjectModel smallProjectModel;
  @override
  Widget build(BuildContext context) {
    final String skill = smallProjectModel.skills.join(' ');
    return TwoRowContainer(
      firstChild: Text(
        skill,
        style: AppTextStyles.regular16Grey(context),
      ),
      secondChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            smallProjectModel.name,
            style: AppTextStyles.medium24White(context),
          ),
          const SizedBox(height: 16),
          Text(
            smallProjectModel.description,
            style: AppTextStyles.regular16White(context),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              if (smallProjectModel.liveLink != null)
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: PrimaryBorderButton(
                    onTap: () async {
                      await launchUrlString(smallProjectModel.liveLink!);
                    },
                    text: 'Live <~>',
                  ),
                ),
              if (smallProjectModel.githubLink != null)
                SecondaryBorderButton(
                  onTap: () async {
                    await launchUrlString(smallProjectModel.githubLink!);
                  },
                  text: 'GitHub >=',
                ),
            ],
          )
        ],
      ),
    );
  }
}
