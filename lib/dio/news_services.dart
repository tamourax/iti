import 'package:dio/dio.dart';

class NewsServices {
  final dio = Dio();

  void getGereralNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/everything?q=general&apiKey=e4ea152c161c4c91a9faad351c15e97c',
    );
    Map<String, dynamic> dataFromJson = response.data; // full response
    List<dynamic> articles = dataFromJson['articles']; // response of articles
    
    
    for (var i = 0; i < articles.length; i++) {
      print(articles[i]['title']);  // response of all title in articles
      
    }
 
   
  }
}
