class SocialMediaModel {
  final String iconPath, url;
  final String? displayName;

  const SocialMediaModel({
    required this.iconPath,
    required this.url,
    this.displayName,
  });
}
