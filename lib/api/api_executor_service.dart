import 'package:dio/dio.dart';
import 'package:fss_mobile/api/custom_interceptor.dart';
import 'package:fss_mobile/services/logger.service.dart';

class ApiClient {
  ApiClient() {
    initService();
  }

  ///Dio
  late Dio _dio;
  Dio get dioInstance => _dio;

  static const Duration timeOutDuration = Duration(seconds: 30);
  static const String _baseUrl = 'https://tetcha.monoinfinity.net/api/v1';

  void initService() {
    LoggerService.log.i('Initializing API service');
    _initDio();
  }

  void _initDio() {
    _dio = Dio();
    _dio.options.followRedirects = false;
    _dio.options.baseUrl = _baseUrl;
    _dio.options.connectTimeout = timeOutDuration;
    _dio.options.receiveTimeout = timeOutDuration;
    _dio.interceptors.clear();
    _dio.interceptors.add(CustomInterceptor());
  }
}
