import 'package:ahmed_yasser_portfolio/core/widgets/page_builder.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/about_me_header.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/my_fun_facts.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/skills_section.dart';
import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  final List<Widget> aboutMePagesList = const [
    AboutMeHeader(),
    SkillsSection(),
    MyFunFacts(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageBuilder(children: aboutMePagesList);
  }
}
