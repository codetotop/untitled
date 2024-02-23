import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  static const _apiKeyParameter = "api_key";
  static const _apiKey = "d107661962965284a68ab916fb8bd204";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest
    options.queryParameters[_apiKeyParameter] = _apiKey;
    super.onRequest(options, handler);
  }
}
