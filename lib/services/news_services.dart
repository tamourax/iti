import 'package:dio/dio.dart';
import 'package:iti/models/general_news_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<GeneralNewsModel>> getGereralNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/everything?q=general&apiKey=e4ea152c161c4c91a9faad351c15e97c',
    );
    Map<String, dynamic> dataFromJson = response.data; // full response
    List<dynamic> articles = dataFromJson['articles']; // response of articles

    List<GeneralNewsModel> newsList =
        []; // list of news ui obj (ele ahna 3izenha)

    for (var article in articles) {
      GeneralNewsModel newsModel = GeneralNewsModel(
        title: article['title'],
        description: article['description'],
        image: article['urlToImage'],
      );

      newsList.add(newsModel);
    }
    print(newsList);
    return newsList;
  }
}
