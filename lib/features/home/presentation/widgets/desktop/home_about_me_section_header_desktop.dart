import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAboutMeSectionHeaderDesktop extends StatelessWidget {
  const HomeAboutMeSectionHeaderDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              HashtagedTextHeader(
                text: 'about-me',
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 5,
                child: SizedBox(
                  child: Divider(
                    color: AppColors.primaryColor,
                    thickness: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            CustomInkWell(
              onTap: () {
                context.read<MainCubit>().changePage(2);
              },
              child: Text('view more ~~>',
                  style: AppTextStyles.medium16White(context)),
            ),
          ],
        ))
      ],
    );
  }
}
