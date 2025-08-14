class CompleteProjectModel {
  final String name;
  final String description;
  final String? liveLink;
  final String? githubLink;
  final String photoLink;
  final List<String> skills;

  const CompleteProjectModel({
    required this.name,
    required this.description,
    this.liveLink,
    this.githubLink,
    required this.photoLink,
    required this.skills,
  });
}
