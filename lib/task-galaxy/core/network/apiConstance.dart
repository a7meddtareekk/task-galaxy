class ApiConstance {
  static const String baseUrl = 'https://newsapi.org/v2';
  static const String apiKey = 'd7011cf7300b42be9cbefccc00a06ac1';

  static const String nowPlayingMoviesApi =
      '$baseUrl/movie/now_playing?api_key=$apiKey';


  static const String egyptNewsApi =
      '$baseUrl/top-headlines?country=eg&apiKey=$apiKey';

static const String bbcNewsApi =
      '$baseUrl/top-headlines?sources=bbc-news&apiKey=$apiKey';

static const String theNextWebNewsApi =
      '$baseUrl/top-headlines?sources=the-next-web&apiKey=$apiKey';


}
