import 'package:ahmed_yasser_portfolio/features/main/data/models/social_media_model.dart';

class PersonalDataModel {
  final SocialMediaModel discord, email, github, linkedin, facebook, whatsapp;

  const PersonalDataModel({
    required this.discord,
    required this.email,
    required this.github,
    required this.linkedin,
    required this.facebook,
    required this.whatsapp,
  });
}
