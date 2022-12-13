import 'package:dartz/dartz.dart';
import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/bbc-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/the-next-web-news.dart';
import 'package:task_galaxy/task-galaxy/domain/repositories/base-news-repository.dart';

class GetBbcNewsUseCase{

final BaseNewsRepository baseNewsRepository;

  GetBbcNewsUseCase(this.baseNewsRepository);

  Future<Either<Failure,List<BbcNews>>>execute()async{
    return await baseNewsRepository.getBbcNews();
  }


}