import 'package:equatable/equatable.dart';

class TheNextWeb extends Equatable {

  final String title;

  final String image;
  final String date;

  const TheNextWeb({required this.title,required this.date, required this.image});

  @override
  List<Object> get props => [title, image,date];
}