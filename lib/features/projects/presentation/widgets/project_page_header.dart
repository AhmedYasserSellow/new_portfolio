import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:flutter/material.dart';

class ProjectsPageHeader extends StatelessWidget {
  const ProjectsPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlashedTextHeader(text: 'projects'),
        SizedBox(
          height: 16,
        ),
        Text(
          'List of my projects',
          style: AppTextStyles.regular16White(context),
        ),
      ],
    );
  }
}
