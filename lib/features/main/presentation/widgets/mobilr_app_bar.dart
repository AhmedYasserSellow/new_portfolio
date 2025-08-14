import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/logo.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            left: AppPadding.mobilePadding,
            right: AppPadding.mobilePadding,
            top: AppPadding.mobilePadding,
          ),
          child: Row(
            children: [
              Logo(),
              Spacer(),
              CustomInkWell(
                onTap: () {
                  context.read<MainCubit>().toggleMenu();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
