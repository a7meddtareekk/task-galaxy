import 'package:equatable/equatable.dart';

class BbcNews extends Equatable {

  final String title;

  final String image;
  final String date;

  const BbcNews({required this.title,required this.date, required this.image});

  @override
  List<Object> get props => [title, image,date];
}