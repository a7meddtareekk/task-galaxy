import 'package:equatable/equatable.dart';

class EgyptNews extends Equatable {

  final String title;

  final String image;

  const EgyptNews({required this.title, required this.image});

  @override
  List<Object> get props => [title, image];
}