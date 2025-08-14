import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/desktop_app_bar.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/widgets/social_media_vertical_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopMainPage extends StatelessWidget {
  const DesktopMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              DesktopAppBar(),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: context.read<MainCubit>().pageController,
                  children: context.read<MainCubit>().appPagesList,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SocialMediaVerticalBar(),
          ),
        ],
      ),
    );
  }
}
