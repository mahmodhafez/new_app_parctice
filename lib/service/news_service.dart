import 'package:dio/dio.dart';
import 'package:new_app/model/NewsModel.dart';

class NewsService {
  Dio dio = Dio();
  Future<List<NewsModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=apple&from=2024-04-27&to=2024-04-27&sortBy=popularity&apiKey=c7bdf083d0fb47e79a0a6196a3f08c4d');
    // Map<String, dynamic> jsonData = response.data;
    // List<dynamic> articles = jsonData['articles'];
    List<NewsModel> newsList = [];
    for (var article in response.data['articles']) {
      NewsModel newsModel = NewsModel(
          image: article['urlToImage'],
          title: article["title"],
          desc: article["description"]);
      newsList.add(newsModel);
    }
    return newsList;
  }
}
