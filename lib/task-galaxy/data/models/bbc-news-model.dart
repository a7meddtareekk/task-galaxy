import '../../domain/entities/bbc-news.dart';

class BbcNewsModel extends BbcNews {
  const BbcNewsModel(
      {required super.title, required super.date, required super.image});

  factory BbcNewsModel.fromJson(Map<String, dynamic>json)=>
      BbcNewsModel(
          title: json['title'],
          image: json['urlToImage'],
          date: json['publishedAt']
      );
}
