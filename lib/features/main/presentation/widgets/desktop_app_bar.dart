import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/logo.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            left: AppPadding.desktopPadding,
            right: AppPadding.desktopPadding,
            top: 32,
          ),
          child: Row(
            children: [
              Logo(),
              Spacer(),
              Row(
                spacing: 32,
                children: context.read<MainCubit>().appBarList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
