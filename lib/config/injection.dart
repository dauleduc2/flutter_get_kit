import 'package:fss_mobile/api/api_executor_service.dart';
import 'package:fss_mobile/api/auth/auth.api.dart';
import 'package:fss_mobile/api/user/user.api.dart';
import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/auth.service.dart';
import 'package:fss_mobile/services/user.service.dart';
import 'package:get/get.dart';

// config global dependencies
Future<void> configureDependencies() async {
  ApiClient client = ApiClient();

  // api
  Get.lazyPut<AuthApi>(() => AuthApi(client.dioInstance));
  Get.lazyPut<UserApi>(() => UserApi(client.dioInstance));

  // provider
  Get.lazyPut(() => AuthProvider());

  // service
  Get.lazyPut(() => AuthService());
  Get.lazyPut(() => UserService());
}
