import 'package:dio/dio.dart';

class HttpCacheInterceptor extends Interceptor {
  HttpCacheInterceptor();

  final _cache = <Uri, Response>{};

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var response = _cache[options.uri];

    if (options.extra['refresh'] == true) {
      return handler.next(options);
    } else if (response != null) {
      return handler.resolve(response);
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _cache[response.realUri] = response;
    super.onResponse(response, handler);
  }
}
