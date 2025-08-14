import 'package:ahmed_yasser_portfolio/core/widgets/page_builder.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/complete_apps_section.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/widgets/small_apps_section.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});
  final List<Widget> projectsPagesList = const [
    CompleteAppsSection(),
    SmallAppsSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      children: projectsPagesList,
    );
  }
}
