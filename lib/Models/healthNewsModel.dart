class HealthArticleModel {
  final String? image;
  final String? title;
  final String? description;
  final String? content;
  final String? url;
  HealthArticleModel({
    required this.title,
    required this.description,
    required this.content,
    required this.image,
    required this.url,
  });

  factory HealthArticleModel.fromJson(dynamic json) {
    return HealthArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
      url: json['url'],
    );
  }
}
