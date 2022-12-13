import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';

class EgyptNewsModel extends EgyptNews {
  const EgyptNewsModel({required super.title, required super.image});

  factory EgyptNewsModel.fromJson(Map<String, dynamic>json)=>
      EgyptNewsModel(
          title: json['title'],
          image: json['urlToImage'],
      );
}
