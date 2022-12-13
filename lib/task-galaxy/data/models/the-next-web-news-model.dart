import 'package:task_galaxy/task-galaxy/domain/entities/the-next-web-news.dart';


class TheNextWebNewsModel extends TheNextWeb {
  const TheNextWebNewsModel(
      {required super.title, required super.date, required super.image});

  factory TheNextWebNewsModel.fromJson(Map<String, dynamic>json)=>
      TheNextWebNewsModel(
          title: json['title'],
          image: json['urlToImage'],
          date: json['publishedAt']
      );
}
