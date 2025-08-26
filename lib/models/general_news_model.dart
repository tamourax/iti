class GeneralNewsModel {
  final String? title;
  final String? description;

  final String? image;

  GeneralNewsModel({
    required this.title,
    required this.description,
    required this.image,
  });
  factory GeneralNewsModel.fromJson(Map<String, dynamic> json) {
    return GeneralNewsModel(
      title: json['title'],
      description: json['description'],
      image: json['urlToImage'],
    );
  }
}
