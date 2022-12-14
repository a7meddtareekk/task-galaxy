import 'package:equatable/equatable.dart';

class EgyptNews extends Equatable {
  final String title;
  final String content;
  final String description;
  late int id;
  late bool isSelected;

  final String image;
  final String date;

   EgyptNews(
      {required this.title,
      required this.date,
      required this.content,
      required this.description,
        required this.isSelected,
      required this.image});

  @override
  List<Object> get props => [title, image, date, id,isSelected,content,description];
}
