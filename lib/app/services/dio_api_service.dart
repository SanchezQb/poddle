import 'package:dio_http/dio_http.dart';
import 'package:podcast_app/constants/constants.dart';

class DioAPIService {
  static BaseOptions options = BaseOptions(
    baseUrl: kBaseUrl,
  );
  Dio dio = Dio(options);
}
