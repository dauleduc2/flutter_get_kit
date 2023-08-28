import 'package:fss_mobile/api/user/user.api.dart';
import 'package:fss_mobile/app/data/modals/user/user.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:get/get.dart';

class UserService extends GetxService {
  final UserApi _userApi = Get.find<UserApi>();

  Future<User> getCurrentUser() async {
    // final res = await _userApi.getCurrentUser();
    // return res.data;
    return const User(
        id: 1, name: 'Duc Dau', createdAt: '', updatedAt: '', deviceId: '');
  }
}
