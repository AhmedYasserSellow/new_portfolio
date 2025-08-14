import 'package:ahmed_yasser_portfolio/core/widgets/hashtaged_text.dart';
import 'package:ahmed_yasser_portfolio/features/contact/presentation/widgets/contact_me_body.dart';
import 'package:flutter/material.dart';

class ContactMeHeader extends StatelessWidget {
  const ContactMeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlashedTextHeader(text: 'contact-me'),
        SizedBox(
          height: 48,
        ),
        ContactMeBody(),
      ],
    );
  }
}
