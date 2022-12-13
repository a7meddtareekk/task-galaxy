import 'package:dartz/dartz.dart';
import 'package:task_galaxy/task-galaxy/core/error/failure.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/bbc-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/the-next-web-news.dart';
import 'package:task_galaxy/task-galaxy/domain/repositories/base-news-repository.dart';

class GetTheNextWebNewsUseCase {
  final BaseNewsRepository baseNewsRepository;

  GetTheNextWebNewsUseCase(this.baseNewsRepository);

  Future<Either<Failure, List<TheNextWeb>>> execute() async {
    return await baseNewsRepository.getTheNextWebNews();
  }
}
