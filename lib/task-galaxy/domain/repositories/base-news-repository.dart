import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:dartz/dartz.dart';


abstract class BaseNewsRepository{

  Future<Either<Failure,List<EgyptNews>>> getEgyptNews();
}