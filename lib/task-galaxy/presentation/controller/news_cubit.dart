import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/bbc-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/egypt-news.dart';
import 'package:task_galaxy/task-galaxy/domain/entities/the-next-web-news.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-bbc-news-usecase.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-egypt-news-usecase.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-the-next-web--news-usecase.dart';

import '../../core/error/failure.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.getEgyptNewsUseCase, this.getBbcNewsUseCase, this.getTheNextWebNewsUseCase) : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);

  final GetEgyptNewsUseCase getEgyptNewsUseCase;
  final GetBbcNewsUseCase getBbcNewsUseCase;
  final GetTheNextWebNewsUseCase getTheNextWebNewsUseCase ;


 List<EgyptNews>egyptNews=[];
  Future<void>getEgyptNews()async{
    Either<Failure,List<EgyptNews>>response=await getEgyptNewsUseCase.execute();
    emit(response.fold((l) => const EgyptNewsGetDataErrorState('error'), (r) {
      egyptNews=r;
      return EgyptNewsGetDataSuccessState(egyptNews);
    }));
  }

  List<BbcNews>bbcNews=[];
  Future<void>getBbcNews()async{
    Either<Failure,List<BbcNews>>response=await getBbcNewsUseCase.execute();
    emit(response.fold((l) => const BbcNewsGetDataErrorState('error'), (r) {
      bbcNews=r;
      return BbcNewsGetDataSuccessState(bbcNews);
    }));
  }

  List<TheNextWeb>theNextWeb=[];
  Future<void>getTheNextWebNews()async{
    Either<Failure,List<TheNextWeb>>response=await getTheNextWebNewsUseCase.execute();
    emit(response.fold((l) => const TheNextWebNewsGetDataErrorState('error'), (r) {
      theNextWeb=r;
      return TheNextWebNewsGetDataSuccessState(theNextWeb);
    }));
  }



}



