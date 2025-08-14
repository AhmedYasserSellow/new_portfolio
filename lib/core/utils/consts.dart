import 'package:ahmed_yasser_portfolio/core/backend/fun_facts_data.dart';
import 'package:ahmed_yasser_portfolio/core/backend/personal_data.dart';
import 'package:ahmed_yasser_portfolio/core/backend/projects_data.dart';
import 'package:ahmed_yasser_portfolio/core/backend/skills_data.dart';
import 'package:ahmed_yasser_portfolio/core/extensions/size.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/completed_apps_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/personal_data_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/skill_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/small_projects_model.dart';
import 'package:flutter/material.dart';

abstract class AppPadding {
  static late double screenWidth;

  static void init(BuildContext context) {
    screenWidth = context.width;
  }

  static double get desktopPadding => screenWidth * 0.124;
  static double get mobilePadding => 16;
  static double get tabletPadding => screenWidth * 0.08;
}

abstract class FakeData {
  // Skills data
  static List<SkillModel> get skills => SkillsData.skills;

  // Projects data
  static List<CompleteProjectModel> get completeProjects =>
      ProjectsData.completeProjects;
  static List<SmallProjectModel> get smallProjects =>
      ProjectsData.smallProjects;

  // Personal data
  static PersonalDataModel get personalDataModel => PersonalData.personalData;

  // Fun facts data
  static List<String> get funFacts => FunFactsData.funFacts;
}
