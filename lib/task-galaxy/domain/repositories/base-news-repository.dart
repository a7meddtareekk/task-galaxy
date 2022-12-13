import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/bbc-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:dartz/dartz.dart';

import '../entities/the-next-web-news.dart';


abstract class BaseNewsRepository{

  Future<Either<Failure,List<EgyptNews>>> getEgyptNews();
  Future<Either<Failure,List<TheNextWeb>>> getTheNextWebNews();
  Future<Either<Failure,List<BbcNews>>> getBbcNews();
}