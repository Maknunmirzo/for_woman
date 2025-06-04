class SocialAccountModel {
  final int id;
  final String title;
  final String link;
  final String icon;

  SocialAccountModel({
    required this.id,
    required this.title,
    required this.link,
    required this.icon,
  });

  factory SocialAccountModel.fromJson(Map<String, dynamic> json) {
    return SocialAccountModel(
      id: json['id'],
      title: json['title'],
      link: json['link'],
      icon: json['icon'],
    );
  }
}
