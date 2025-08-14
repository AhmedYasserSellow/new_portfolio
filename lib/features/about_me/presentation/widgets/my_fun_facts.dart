import 'package:ahmed_yasser_portfolio/core/backend/fun_facts_data.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:flutter/material.dart';

class MyFunFacts extends StatelessWidget {
  const MyFunFacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HashtagedTextHeader(text: 'my-fun-facts'),
        SizedBox(
          height: 48,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: List.generate(
                  FunFactsData.funFacts.length,
                  (index) => OneRowContainer(
                    child: Text(
                      FunFactsData.funFacts[index],
                      style: AppTextStyles.regular16Grey(context),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }
}
