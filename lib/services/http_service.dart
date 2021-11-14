import 'package:dio/dio.dart';
import 'package:flutter_pro/utils/http/http_interceptor.dart';
import 'package:flutter_pro/utils/http/http_mixin.dart';
import 'package:logger/logger.dart';

class HttpService with HttpMixin {
  final String? url;
  late final Dio _dio;
  late final Logger _logger;

  HttpService({this.url}) {
    _setupDio();

    _logger = Logger();
  }

  Future<dynamic> get({required String url}) async {
    try {
      late Response response;
      response = await _dio.get(url);

      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        _logger.d(e.response?.data);
        _logger.d(e.response?.headers);
        _logger.d(e.response?.requestOptions);
      } else {
        _logger.d(e.requestOptions);
        _logger.d(e.message);
      }
    }
  }

  Future<dynamic> post({
    required String url,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      late Response response;
      response = await _dio.post(
        url,
        data: data,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );

      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        _logger.d(e.response?.data);
        _logger.d(e.response?.headers);
        _logger.d(e.response?.requestOptions);
      } else {
        _logger.d(e.requestOptions);
        _logger.d(e.message);
      }
    }
  }

  Future<dynamic> put({
    required String url,
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      late Response response;
      response = await _dio.put(
        url,
        data: data,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
        onSendProgress: onSendProgress,
      );

      return response.data;
    } on DioError catch (e) {
      if (e.response != null) {
        _logger.d(e.response?.data);
        _logger.d(e.response?.headers);
        _logger.d(e.response?.requestOptions);
      } else {
        _logger.d(e.requestOptions);
        _logger.d(e.message);
      }
    }
  }

  _setupDio() {
    _dio = Dio(BaseOptions(baseUrl: url ?? baseUrl));
    _dio.interceptors.add(HttpCacheInterceptor());
  }
}
