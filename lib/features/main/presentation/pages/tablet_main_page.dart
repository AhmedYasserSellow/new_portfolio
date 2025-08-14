import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/mobilr_app_bar.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabletMainPage extends StatelessWidget {
  const TabletMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  MobileAppBar(),
                  SizedBox(height: AppPadding.mobilePadding),
                  Expanded(
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: context.read<MainCubit>().pageController,
                      children: context.read<MainCubit>().appPagesList,
                    ),
                  ),
                ],
              ),
              // Menu Overlay
              if (context.read<MainCubit>().isMenuOpen)
                Positioned.fill(
                  child: Container(
                    color: AppColors.backgroundColor,
                    child: MenuPage(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
