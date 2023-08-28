import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/store.service.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final AuthProvider authProvider = Get.find();
  @override
  void onReady() {
    super.onReady();
    if (LocalStoreService.accessToken != "") authProvider.getCurrentUser();
  }
}
