import 'package:get_it/get_it.dart';
import 'package:task_galaxy/task-galaxy/data/data_sources/news-remote-data-source.dart';
import 'package:task_galaxy/task-galaxy/data/repositories/news-repository.dart';
import 'package:task_galaxy/task-galaxy/domain/repositories/base-news-repository.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-bbc-news-usecase.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-egypt-news-usecase.dart';
import 'package:task_galaxy/task-galaxy/domain/use_cases/get-the-next-web--news-usecase.dart';

import '../../presentation/controller/news_cubit.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///
    //sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
    //sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));
    sl.registerFactory(() => NewsCubit(sl(),sl(),sl()));


    ///UseCases
    //sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    // sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    sl.registerLazySingleton(() => GetEgyptNewsUseCase(sl()));
    sl.registerLazySingleton(() => GetBbcNewsUseCase(sl()));
    sl.registerLazySingleton(() => GetTheNextWebNewsUseCase(sl()));


    /// Data Repository
    //sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
    sl.registerLazySingleton<BaseNewsRepository>(() => NewsRepository(sl()));


    ///Data Source
   // sl.registerLazySingleton<BaseMovieRemoteDataSource>(
       // () => MovieRemoteDataSource());
    sl.registerLazySingleton<BaseNewsRemoteDataSource>(() => NewsRemoteDataSource());
  }
}
