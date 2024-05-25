import 'package:dio/dio.dart';
import 'package:task_app/Models/healthNewsModel.dart';
import 'package:task_app/core/function/AppUtills.dart';

class NewsServices {
  Dio dio;
  NewsServices({required this.dio});
  Future<List<HealthArticleModel>?> getTobLinesHealthNews() async {
    try {
      Response response = await dio.get(
          '${AppUtills.baseUrl}v2/top-headlines?country=eg&category=health&apiKey=${AppUtills.apikey}');

      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData['articles'];
      List<HealthArticleModel> healtharticleMidelsList = [];
      for (var article in articles) {
        HealthArticleModel healtharticleModel =
            HealthArticleModel.fromJson(article);

        healtharticleMidelsList.add(healtharticleModel);
      }

      return healtharticleMidelsList;
    } catch (e) {
      print('${e.toString()}');
      return null;
    }
  }
}
