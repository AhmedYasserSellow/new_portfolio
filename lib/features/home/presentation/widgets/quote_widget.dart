import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OneRowContainer(
                padding: EdgeInsets.all(32),
                child: Text(
                  'With great power comes great electricity bill',
                  style: AppTextStyles.regular24White(context),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OneRowContainer(
                      child: Text(
                    '- Dr Who',
                    style: AppTextStyles.regular24White(context),
                  ))
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 8,
          top: -12,
          child: Container(
            color: AppColors.backgroundColor,
            child: Icon(Icons.format_quote,
                color: AppColors.secondaryColor, size: 24),
          ),
        ),
        Positioned(
          bottom: 36,
          right: 8,
          child: Container(
            color: AppColors.backgroundColor,
            child: Icon(Icons.format_quote,
                color: AppColors.secondaryColor, size: 24),
          ),
        ),
      ],
    );
  }
}
