import 'package:ahmed_yasser_portfolio/features/main/data/models/skill_model.dart';

class SkillsData {
  static const List<SkillModel> skills = [
    SkillModel(type: 'Languages', skills: ['Dart']),
    SkillModel(type: 'Frameworks', skills: ['Flutter']),
    SkillModel(
        type: 'Databases', skills: ['SQLite', 'Hive', 'Firebase', 'Supabase']),
    SkillModel(
        type: 'Tools',
        skills: ['VS Code', 'Android Studio', 'Cursor', 'Git', 'Figma']),
    SkillModel(type: 'Others', skills: ['Microsoft Office']),
  ];
}
