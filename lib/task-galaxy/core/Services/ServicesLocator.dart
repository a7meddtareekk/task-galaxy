import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///
    //sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
    //sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));


    ///UseCases
    //sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    // sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    // sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));


    /// Data Repository
    //sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));


    ///Data Source
   // sl.registerLazySingleton<BaseMovieRemoteDataSource>(
       // () => MovieRemoteDataSource());
  }
}
