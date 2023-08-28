import 'package:fss_mobile/services/auth.service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final AuthService _authService = Get.find();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onSignIn() => _authService.signIn('decoy_token');
}
