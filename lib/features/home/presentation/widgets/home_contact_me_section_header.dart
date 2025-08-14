import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContactMeSectionHeader extends StatelessWidget {
  const HomeContactMeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HashtagedTextHeader(text: 'contacts'),
        SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Divider(
            color: AppColors.primaryColor,
            thickness: 1,
          ),
        ),
        Spacer(
          flex: 3,
        ),
        CustomInkWell(
          onTap: () {
            context.read<MainCubit>().changePage(3);
          },
          child: Text('view all ~~>', style: AppTextStyles.medium16White(context)),
        ),
      ],
    );
  }
}
