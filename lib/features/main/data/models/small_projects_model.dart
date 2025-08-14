class SmallProjectModel {
  final String name;
  final String description;
  final String? liveLink;
  final String? githubLink;
  final List<String> skills;

  const SmallProjectModel({
    required this.name,
    required this.description,
    this.liveLink,
    this.githubLink,
    required this.skills,
  });
}
