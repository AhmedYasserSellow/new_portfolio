import 'package:ahmed_yasser_portfolio/core/widgets/page_builder.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/about_me_section.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/contact_me_section.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/home_section.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/widgets/projects_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  final List<Widget> homePagesList = const [
    HomeSection(),
    HomeProjectsSection(),
    AboutMeSection(),
    ContactMeSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      children: homePagesList,
    );
  }
}
