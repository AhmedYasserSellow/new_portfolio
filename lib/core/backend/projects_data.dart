import 'package:ahmed_yasser_portfolio/features/main/data/models/completed_apps_model.dart';
import 'package:ahmed_yasser_portfolio/features/main/data/models/small_projects_model.dart';

class ProjectsData {
  static final List<CompleteProjectModel> completeProjects = [
    CompleteProjectModel(
      name: 'LoL Share',
      description:
          'a web app that helps league of legends boosters to share LOL accounts to help them improve their boosting progress',
      liveLink: 'https://lolshare-iota.vercel.app/',
      photoLink: 'assets/images/projects/lol_share.png',
      skills: ['Flutter', 'Dart', 'Firebase'],
    ),
    CompleteProjectModel(
      name: 'Padel Club',
      description:
          'a mobile app that helps padel clubs to manage their bookings and customers',
      githubLink:
          'https://github.com/AhmedYasserSellow/Padel-Club-Booking-Service',
      photoLink: 'assets/images/projects/padel_club.png',
      skills: ['Flutter', 'Dart', 'Firebase,Cloud Messaging'],
    ),
    CompleteProjectModel(
      name: 'Portfolio',
      description: 'you are using it right now',
      photoLink: 'assets/images/projects/portfolio.png',
      githubLink: 'https://github.com/AhmedYasserSellow/new_portfolio',
      skills: ['Flutter', 'Dart'],
    ),
  ];

  static final List<SmallProjectModel> smallProjects = [
    SmallProjectModel(
      name: 'Eye Go Movies',
      description:
          'a mobile app that helps users to find movies and watch them',
      githubLink: 'https://github.com/AhmedYasserSellow/eyego_movies_app',
      skills: ['Flutter', 'Dart', 'API', 'Firebase'],
    ),
    SmallProjectModel(
      name: 'Quotes',
      description:
          'a mobile application for generating quotes and knowing more about its authors',
      githubLink: 'https://github.com/AhmedYasserSellow/quotes',
      skills: ['Flutter', 'Dart', 'API', 'Firebase'],
    ),
    SmallProjectModel(
      name: 'Global World Clock',
      description:
          'a mobile app for tracking and comparing time zones worldwide, making global scheduling effortless',
      githubLink:
          'https://github.com/AhmedYasserSellow/codeAlpha_global_world_clock',
      skills: ['Flutter', 'Dart', 'API'],
    ),
    SmallProjectModel(
      name: 'Photo Hub',
      description:
          'a mobile app for discovering, saving, and sharing inspiring photos',
      githubLink: 'https://github.com/AhmedYasserSellow/codeAlpha_photo_hub',
      skills: ['Flutter', 'Dart', 'Firebase'],
    ),
    SmallProjectModel(
      name: 'College App',
      description:
          'a mobile app for managing student life and campus events, keeping students informed and connected',
      githubLink: 'https://github.com/AhmedYasserSellow/codealpha_college_app',
      skills: ['Flutter', 'Dart', 'Firebase'],
    ),
    SmallProjectModel(
      name: 'To-Do App',
      description: 'a mobile app for managing your tasks and staying organized',
      githubLink: 'https://github.com/AhmedYasserSellow/Old-ToDo-App',
      skills: ['Flutter', 'Dart', 'SQFLite'],
    ),
  ];
}
