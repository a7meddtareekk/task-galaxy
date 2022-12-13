import 'package:task_galaxy/task-galaxy/core/network/apiConstance.dart';
import 'package:task_galaxy/task-galaxy/data/models/egpyt-news-model.dart';
import 'package:dio/dio.dart';

abstract class BaseNewsRemoteDataSource{
Future<List<EgyptNewsModel>> getEgyptNews();
}
class NewsRemoteDataSource extends BaseNewsRemoteDataSource{
  @override
  Future<List<EgyptNewsModel>> getEgyptNews() async {
    final response = await Dio().get(ApiConstance.egyptNewsApi);
    return List<EgyptNewsModel>.from((response.data['articles']as List).map((e) => EgyptNewsModel.fromJson(e)));
  }
}