import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/custom_grid_view.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/complete_project_item.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/project_page_header.dart';
import 'package:flutter/material.dart';

class CompleteAppsSection extends StatelessWidget {
  const CompleteAppsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectsPageHeader(),
        SizedBox(
          height: 64,
        ),
        HashtagedTextHeader(text: 'complete-apps'),
        SizedBox(
          height: 48,
        ),
        AdaptiveLayout(
          desktop: (context) => CustomGridView(
            crossAxisCount: 3,
            children: List.generate(
              FakeData.completeProjects.length,
              (index) => CompleteProjectItem(
                complateProjectModel: FakeData.completeProjects[index],
              ),
            ),
          ),
          tablet: (context) => CustomGridView(
            crossAxisCount: 2,
            children: List.generate(
              FakeData.completeProjects.length,
              (index) => CompleteProjectItem(
                complateProjectModel: FakeData.completeProjects[index],
              ),
            ),
          ),
          mobile: (context) => CustomGridView(
            crossAxisCount: 1,
            children: List.generate(
              FakeData.completeProjects.length,
              (index) => CompleteProjectItem(
                complateProjectModel: FakeData.completeProjects[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
