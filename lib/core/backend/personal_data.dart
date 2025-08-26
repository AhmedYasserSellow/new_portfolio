import 'package:ahmed_yasser_portfolio/core/utils/assets.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/personal_data_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/social_media_model.dart';

class PersonalData {
  static const PersonalDataModel personalData = PersonalDataModel(
    discord: SocialMediaModel(
      iconPath: Assets.discord,
      url: 'https://discord.com/users/1070110572621856848',
      displayName: 'shadowspark74',
    ),
    github: SocialMediaModel(
      iconPath: Assets.github,
      url: 'https://github.com/AhmedYasserSellow',
      displayName: 'AhmedYasserSellow',
    ),
    email: SocialMediaModel(
      iconPath: Assets.email,
      url: 'mailto:ahmedyasser3554@gmail.com',
      displayName: 'ahmedyasser3554@gmail.com',
    ),
    linkedin: SocialMediaModel(
      iconPath: Assets.linkedin,
      url: 'https://www.linkedin.com/in/ahmedyasser3103',
      displayName: 'ahmedyasser3103',
    ),
    whatsapp: SocialMediaModel(
      iconPath: Assets.whatsapp,
      url: 'https://wa.me/+201028825215',
      displayName: '+201028825215',
    ),
    facebook: SocialMediaModel(
      iconPath: Assets.facebook,
      url: 'https://www.facebook.com/a7medysr',
      displayName: 'a7medysr',
    ),
  );
}
