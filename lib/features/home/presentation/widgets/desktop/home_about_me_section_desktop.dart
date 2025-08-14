import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/buttons.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/containers.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAboutMeSectionDesktop extends StatelessWidget {
  const HomeAboutMeSectionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 76, right: 360),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Ahmed is a ',
                  style: AppTextStyles.semiBold32White(context),
                  children: [
                    TextSpan(
                      text: 'softweare engineer ',
                      style: AppTextStyles.semiBold32Primary(context),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: AppTextStyles.semiBold32White(context),
                    ),
                    TextSpan(
                      text: 'flutter developer',
                      style: AppTextStyles.semiBold32Primary(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'He crafts seamless mobile applications where technology meets innovation, delivering user-friendly and creative Flutter solutions.',
                style: AppTextStyles.regular16Grey(context),
              ),
              const SizedBox(height: 24),
              PrimaryBorderButton(
                text: 'Contact Me !!',
                onTap: () {
                  context.read<MainCubit>().changePage(3);
                },
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Column(children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 360),
              child: Image.asset(
                'assets/images/profile.png',
              ),
            ),
            OneRowContainer(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(width: 8),
                  Text.rich(TextSpan(
                      text: 'Currently working on ',
                      style: AppTextStyles.medium16Grey(context),
                      children: [
                        TextSpan(
                          text: 'Portfolio ',
                          style: AppTextStyles.medium16White(context),
                        ),
                      ]))
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
