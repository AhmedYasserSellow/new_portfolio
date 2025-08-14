import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/custom_grid_view.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/small_project_item.dart';
import 'package:flutter/material.dart';

class SmallAppsSection extends StatelessWidget {
  const SmallAppsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HashtagedTextHeader(text: 'small-projects'),
        SizedBox(
          height: 48,
        ),
        AdaptiveLayout(
          desktop: (context) => CustomGridView(
            crossAxisCount: 3,
            children: List.generate(
              FakeData.smallProjects.length,
              (index) => SmallProjectItem(
                smallProjectModel: FakeData.smallProjects[index],
              ),
            ),
          ),
          tablet: (context) => CustomGridView(
            crossAxisCount: 2,
            children: List.generate(
              FakeData.smallProjects.length,
              (index) => SmallProjectItem(
                smallProjectModel: FakeData.smallProjects[index],
              ),
            ),
          ),
          mobile: (context) => CustomGridView(
            crossAxisCount: 1,
            children: List.generate(
              FakeData.smallProjects.length,
              (index) => SmallProjectItem(
                smallProjectModel: FakeData.smallProjects[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
