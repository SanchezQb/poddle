import 'package:dio_http/dio_http.dart';
import 'package:podcast_app/constants/constants.dart';

class DioAPIService {
  static BaseOptions options = BaseOptions(
    baseUrl: kBaseUrl,
  );
  Dio dio = Dio(options);
}


// curl -X GET --include 'https://listen-api.listennotes.com/api/v2/best_podcasts' -H 'X-ListenAPI-Key: 201b12c1b7b74326bfe74fd5f409765f'
