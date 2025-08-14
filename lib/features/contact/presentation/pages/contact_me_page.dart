import 'package:ahmed_yasser_portfolio/core/widgets/page_builder.dart';
import 'package:ahmed_yasser_portfolio/features/contact/presentation/widgets/all_media.dart';
import 'package:ahmed_yasser_portfolio/features/contact/presentation/widgets/contact_me_header.dart';
import 'package:flutter/material.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  final List<Widget> contactMePagesList = const [
    ContactMeHeader(),
    AllMedia(),
  ];
  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      children: contactMePagesList,
    );
  }
}
