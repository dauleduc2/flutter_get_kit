import 'package:flutter/material.dart';
import 'package:fss_mobile/app/routes/app_pages.dart';
import 'package:fss_mobile/providers/auth.provider.dart';
import 'package:fss_mobile/services/logger.service.dart';
import 'package:fss_mobile/widgets/auto_login/app.controller.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthProvider authProvider = Get.find();

    return GetBuilder<AppController>(
      init: AppController(),
      builder: (controller) => Obx(
        () {
          if (authProvider.isLogin.value == false) {
            return GetMaterialApp(
              title: "Federated Service Solution",
              initialRoute: Routes.HOME,
              theme: ThemeData(
                primarySwatch: Colors.orange,
              ),
              getPages: AppPages.routes,
            );
          }

          return GetMaterialApp(
            title: "Federated Service Solution",
            initialRoute: AppPages.INITIAL,
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
