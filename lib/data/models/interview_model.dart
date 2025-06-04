class InterviewModel {
  final int id;
  final String user;
  final String title;
  final String image;
  final int duration;

  InterviewModel({
    required this.id,
    required this.user,
    required this.title,
    required this.image,
    required this.duration,
  });

  factory InterviewModel.fromJson(Map<String, dynamic> json) {
    return InterviewModel(
      id: json['id'],
      user: json['user'],
      title: json['title'],
      image: json['image'],
      duration: json['duration'],
    );
  }
}
