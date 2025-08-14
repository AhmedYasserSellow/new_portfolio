import 'package:ahmed_yasser_portfolio/features/main/data/models/skill_model.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    super.key,
    required this.skillModel,
  });
  final SkillModel skillModel;
  @override
  Widget build(BuildContext context) {
    final String skill = skillModel.skills.join(' ');
    return TwoRowContainer(
      secondChild: Text(
        skill,
        style: AppTextStyles.regular16Grey(context),
      ),
      firstChild: Text(
        skillModel.type,
        style: AppTextStyles.semiBold16White(context),
      ),
    );
  }
}
