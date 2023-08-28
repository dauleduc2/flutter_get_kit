import 'package:dio/dio.dart';
import 'package:fss_mobile/api/user/user.api.dart';
import 'package:fss_mobile/app/data/modals/user/user.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:fss_mobile/services/store.service.dart';
import 'package:fss_mobile/services/user.service.dart';
import 'package:get/get.dart';

const defaultUser = User(
  id: -1,
  name: "",
  createdAt: "",
  deviceId: "",
  updatedAt: "",
);

class AuthProvider extends GetxController {
  RxString deviceId = "".obs;
  var user = Rx<User>(defaultUser);
  RxBool isLogin = false.obs;
  final UserService _userService = Get.find();

  set setIsLogin(bool isLogin) {
    this.isLogin.value = isLogin;
  }

  void resetData() {
    user.value = defaultUser;
    isLogin.value = false;
  }

  void updateUserInfo() {
    getCurrentUser();
  }

  void logout() async {
    resetData();
    LocalStoreService.accessToken = "";
    // TODO: call logout api
  }

  Future<User?> getCurrentUser() async {
    try {
      var currentUser = await _userService.getCurrentUser();
      user.value = currentUser;
      isLogin.value = true;
      return currentUser;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        resetData();
        LocalStoreService.accessToken = "";
      }
      return null;
    } catch (e) {
      LoggerService.log.e("error $e");
      return null;
    }
  }
}
