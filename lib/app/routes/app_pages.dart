import 'package:get/get.dart';

import '../modules/home/home.binding.dart';
import '../modules/home/home.view.dart';
import '../modules/login/login.binding.dart';
import '../modules/login/login.view.dart';
import '../modules/register/register.binding.dart';
import '../modules/register/register.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
