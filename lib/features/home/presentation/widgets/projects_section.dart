import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/custom_grid_view.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/complete_project_item.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/home_projectss_section_header.dart';
import 'package:flutter/material.dart';

class HomeProjectsSection extends StatelessWidget {
  const HomeProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeProjectsSectionHeader(),
        SizedBox(
          height: 48,
        ),
        CustomGridView(
          crossAxisCount:
              MediaQuery.of(context).size.width < BreakPoints.desktop ? 2 : 3,
          children: List.generate(
            3,
            (index) => CompleteProjectItem(
              complateProjectModel: FakeData.completeProjects[index],
            ),
          ),
        ),
      ],
    );
  }
}
