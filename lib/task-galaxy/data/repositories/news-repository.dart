import 'package:dartz/dartz.dart';
import 'package:task_galaxy/task-galaxy/core/error/exception.dart';
import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/data/data_sources/news-remote-data-source.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:task_galaxy/task-galaxy/domain/repositories/base-news-repository.dart';

class NewsRepository extends BaseNewsRepository{
  final BaseNewsRemoteDataSource baseNewsRemoteDataSource;

  NewsRepository(this.baseNewsRemoteDataSource);

  @override
  Future<Either<Failure, List<EgyptNews>>> getEgyptNews() async {
    final result = await baseNewsRemoteDataSource.getEgyptNews();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}