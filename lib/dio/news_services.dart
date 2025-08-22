import 'package:dio/dio.dart';

class NewsServices {
final dio = Dio();

void getGereralNews() async {
  final response = await dio.get(
    'https://newsapi.org/v2/everything?q=general&apiKey=e4ea152c161c4c91a9faad351c15e97c',
  );
  print(response);
}

}
