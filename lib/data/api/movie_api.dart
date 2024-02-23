import 'package:dio/dio.dart';
import 'package:untitled/data/api/api_interceptor.dart';

class MovieApi {
  const MovieApi({
    required this.apiInterceptor,
    required this.dio,
  });

  final ApiInterceptor apiInterceptor;
  final Dio dio;

  void addInterceptor() {
    dio.interceptors.add(apiInterceptor);
  }
}
