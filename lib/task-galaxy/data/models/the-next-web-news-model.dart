import 'package:task_galaxy/task-galaxy/domain/entities/the-next-web-news.dart';

class TheNextWebNewsModel extends TheNextWeb {
  TheNextWebNewsModel(
      {required super.title,
      required super.isSelected,
      required super.date,
      required super.description,
      required super.content,
      required super.image});

  factory TheNextWebNewsModel.fromJson(Map<String, dynamic> json) =>
      TheNextWebNewsModel(
          title: json['title'],
          image: json['urlToImage'],
          date: json['publishedAt'],
          content: json['content'].toString(),
          description: json['description'].toString(),
          isSelected: false);
}
