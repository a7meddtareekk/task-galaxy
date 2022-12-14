import 'package:equatable/equatable.dart';

class BbcNews extends Equatable {
  final String title;
  final String content;
  final String description;
  late int id;
  final String image;
  final String date;
  late bool isSelected;

  BbcNews(
      {required this.title,
      required this.isSelected,
      required this.content,
      required this.description,
      required this.date,
      required this.image});

  @override
  List<Object> get props => [title, image, date, isSelected,content,id,description];
}
