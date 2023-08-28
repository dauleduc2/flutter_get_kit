import 'package:fss_mobile/api/auth/auth.api.dart';
import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:fss_mobile/services/store.service.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final AuthApi _authApi = Get.find<AuthApi>();
  final AuthProvider _authProvider = Get.find();
  // assume that login api return a token
  Future<String> signIn(String idToken) async {
    // try {
    //   final response =
    //       await _authApi.signIn(idToken, _authProvider.deviceId.value);
    //   return response.data;
    // } catch (e) {
    //   LoggerService.log.e(e);
    // }
    // Note: testing purpose only
    var accessToken = 'abcxyz';
    LocalStoreService.accessToken = accessToken;
    _authProvider.isLogin.value = true;
    return accessToken;
  }
}
