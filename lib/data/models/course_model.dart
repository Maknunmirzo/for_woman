class CourseModel {
  final int id;
  final String user;
  final String category;
  final String title;
  final String image;
  final num price;
  final num rating;
  final String? status;

  CourseModel({
    required this.id,
    required this.user,
    required this.category,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.status,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) {
    return CourseModel(
      id: json['id'],
      user: json['user'],
      category: json['category'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      rating: json['rating'],
      status: json['status']??"",
    );
  }
}
