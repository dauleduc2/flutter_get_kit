import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fss_mobile/app/routes/app_pages.dart';
import 'package:fss_mobile/constants/store.constant.dart';
import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:fss_mobile/services/store.service.dart';
import 'package:fss_mobile/services/toast.service.dart';
import 'package:get/get.dart' hide Response;

class CustomInterceptor extends Interceptor {
  static const genericErrorMessage =
      'Oops! Something went wrong! Please try again!';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    LoggerService.log
        .i('Requesting:\n${options.method} - ${options.uri.toString()}');
    options.contentType = "application/json;charset=UTF-8";
    final accessToken = LocalStoreService.accessToken;
    if (accessToken.isNotEmpty) {
      options.headers[LocalStoreConstant.authHeader] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // LoggerService.log.i(
    //     '${response.statusCode} - ${response.requestOptions.uri.toString()}');
    // LoggerService.log.i(response.data);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final AuthProvider authProvider = Get.find();
    // make the loading animation at least 500ms
    Timer(const Duration(milliseconds: 500), () {});

    // logout and redirect to login screen on 401 error
    if (err.response?.statusCode == 401) {
      authProvider.logout();
      Get.offNamed(Routes.LOGIN);
      ToastService.showWarning('Your session has expired. Please login again');

      return handler.next(err);
    }

    // TODO: handle 400 error
    if (err.response?.statusCode == 400) {}

    LoggerService.log.i('onError:\n'
        'code = ${err.response?.statusCode} ${err.message}\n'
        'Request uri: ${err.requestOptions.uri}\n'
        'Message: ${err.message}');
    super.onError(err, handler);
  }
}
