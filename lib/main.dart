import 'package:ahmed_yasser_portfolio/core/services/get_it_service.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/consts.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/cubit/main_cubit.dart';
import 'package:ahmed_yasser_portfolio/features/main/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppPadding.init(context);
    return BlocProvider(
      create: (context) => MainCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ahmed Yasser',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.backgroundColor,
        ),
        home: const MainPage(),
      ),
    );
  }
}
