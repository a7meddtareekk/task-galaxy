class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '80c4b8badc7e6d4e3761808900450456';

  static const String nowPlayingMoviesApi =
      '$baseUrl/movie/now_playing?api_key=$apiKey';


  static const String popularMoviesApi =
      '$baseUrl/movie/popular?api_key=$apiKey';


  static const String topRatedMoviesApi =
      '$baseUrl/movie/top_rated?api_key=$apiKey';

  static  String movieDetailsPath(int movieId) =>
      '$baseUrl/movie/$movieId?api_key=$apiKey';
static  String movieRecommendationPath(int movieId) =>
      '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';

  static const String baseImageUrl='https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path)=>'$baseImageUrl$path';
}
