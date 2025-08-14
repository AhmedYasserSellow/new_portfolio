import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/custom_grid_view.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/widgets/skill_item.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = FakeData.skills;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HashtagedTextHeader(text: 'skills'),
        const SizedBox(height: 48),
        if (skills.isEmpty)
          const Center(
            child: Text('No skills found'),
          )
        else
          CustomGridView(
            crossAxisCount: 5,
            children: List.generate(
              skills.length,
              (index) => SkillItem(
                skillModel: skills[index],
              ),
            ),
          ),
      ],
    );
  }
}
