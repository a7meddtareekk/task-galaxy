import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';

class EgyptNewsModel extends EgyptNews {
   EgyptNewsModel(
      {required super.title,
        required super.isSelected,
      required super.date,
      required super.description,
      required super.content,
      required super.image});

  factory EgyptNewsModel.fromJson(Map<String, dynamic> json) => EgyptNewsModel(
      title: json['title'],
      image: json['urlToImage'].toString(),
      date: json['publishedAt'].toString(),
      content: json['content'].toString(),
      description: json['description'].toString(),
      isSelected: false
  );
}
