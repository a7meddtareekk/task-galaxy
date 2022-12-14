import '../../domain/entities/bbc-news.dart';

class BbcNewsModel extends BbcNews {
  BbcNewsModel(
      {required super.title,
      required super.isSelected,
      required super.content,
      required super.description,
      required super.date,
      required super.image});

  factory BbcNewsModel.fromJson(Map<String, dynamic> json) => BbcNewsModel(
        title: json['title'],
        image: json['urlToImage'],
        date: json['publishedAt'],
        content: json['content'].toString(),
        description: json['description'].toString(),
        isSelected: false,
      );
}
