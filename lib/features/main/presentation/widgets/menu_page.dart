import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/logo.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/social_media_icon.dart';
import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Container(
          color: AppColors.backgroundColor,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.mobilePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Logo(),
                      CustomInkWell(
                        onTap: () {
                          context.read<MainCubit>().closeMenu();
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 48),

                  // Navigation Links
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNavItem(context, 'home', 0),
                      SizedBox(height: 16),
                      _buildNavItem(context, 'works', 1),
                      SizedBox(height: 16),
                      _buildNavItem(context, 'about-me', 2),
                      SizedBox(height: 16),
                      _buildNavItem(context, 'contacts', 3),
                    ],
                  ),

                  Spacer(),

                  // Social Media Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaIcon(
                        socialMediaModel: FakeData.personalDataModel.github,
                      ),
                      SizedBox(width: 16),
                      SocialMediaIcon(
                        socialMediaModel: FakeData.personalDataModel.linkedin,
                      ),
                      SizedBox(width: 16),
                      SocialMediaIcon(
                        socialMediaModel: FakeData.personalDataModel.facebook,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem(BuildContext context, String text, int index) {
    final cubit = context.read<MainCubit>();
    final isActive = cubit.currentIndex == index;

    return CustomInkWell(
      onTap: () {
        cubit.changePage(index);
        cubit.closeMenu();
      },
      child: Text.rich(
        TextSpan(
          text: '#',
          style: AppTextStyles.regular16Primary(context),
          children: [
            TextSpan(
              text: text,
              style: isActive
                  ? AppTextStyles.medium16White(context)
                  : AppTextStyles.medium16Grey(context),
            ),
          ],
        ),
      ),
    );
  }
}
