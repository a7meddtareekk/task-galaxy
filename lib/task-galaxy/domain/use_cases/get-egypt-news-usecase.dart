import 'package:dartz/dartz.dart';
import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:task_galaxy/task-galaxy/domain/repositories/base-news-repository.dart';

class GetEgyptNewsUseCase{

final BaseNewsRepository baseNewsRepository;

  GetEgyptNewsUseCase(this.baseNewsRepository);
  Future<Either<Failure,List<EgyptNews>>>execute()async{
    return await baseNewsRepository.getEgyptNews();
  }
}