import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/inkwell.dart';
import 'package:ahmed_yasser_portfolio/features/about_me/presentation/pages/about_me_page.dart';
import 'package:ahmed_yasser_portfolio/features/contact/presentation/pages/contact_me_page.dart';
import 'package:ahmed_yasser_portfolio/features/home/presentation/pages/home_page.dart';
import 'package:ahmed_yasser_portfolio/features/projects/presentation/pages/projects_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  final List<String> appBarTexts = [
    'home',
    'works',
    'about-me',
    'contact',
  ];
  List<Widget> appBarList() => List.generate(
        appBarTexts.length,
        (index) => CustomInkWell(
          onTap: () => changePage(index),
          child: HashtagedText(
            text: appBarTexts[index],
            isActive: index == currentIndex,
          ),
        ),
      );

// App Pages List Section
  int currentIndex = 0;
  bool isMenuOpen = false;
  final List<Widget> appPagesList = [
    const HomePage(),
    const ProjectsPage(),
    const AboutMePage(),
    const ContactMePage(),
  ];
  final PageController pageController = PageController();

  void changePage(int index) {
    currentIndex = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    emit(ChangePageState());
  }

  void toggleMenu() {
    isMenuOpen = !isMenuOpen;
    emit(MenuState());
  }

  void closeMenu() {
    isMenuOpen = false;
    emit(MenuState());
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
