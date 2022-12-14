import 'package:task_galaxy/task-galaxy/core/network/apiConstance.dart';
import 'package:task_galaxy/task-galaxy/data/models/bbc-news-model.dart';
import 'package:task_galaxy/task-galaxy/data/models/egpyt-news-model.dart';
import 'package:dio/dio.dart';
import 'package:task_galaxy/task-galaxy/data/models/the-next-web-news-model.dart';

abstract class BaseNewsRemoteDataSource{
Future<List<EgyptNewsModel>> getEgyptNews();
Future<List<BbcNewsModel>> getBbcNews();
Future<List<TheNextWebNewsModel>> getTheNextWebNews();
}
class NewsRemoteDataSource extends BaseNewsRemoteDataSource{
  @override
  Future<List<EgyptNewsModel>> getEgyptNews() async {
    final response = await Dio().get(ApiConstance.egyptNewsApi);
    return List<EgyptNewsModel>.from((response.data['articles']as List).map((e) => EgyptNewsModel.fromJson(e)));
  }

  @override
  Future<List<BbcNewsModel>> getBbcNews()async {
    final response = await Dio().get(ApiConstance.bbcNewsApi);
    return List<BbcNewsModel>.from((response.data['articles']as List).map((e) => BbcNewsModel.fromJson(e)));
  }

  @override
  Future<List<TheNextWebNewsModel>> getTheNextWebNews()async {
  final response = await Dio().get(ApiConstance.theNextWebNewsApi);
  return List<TheNextWebNewsModel>.from((response.data['articles']as List ).map((e) => TheNextWebNewsModel.fromJson(e)));
  }
}