import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import 'login.controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'LoginView is working',
              style: TextStyle(fontSize: 20),
            ),
            30.height,
            ElevatedButton(
              onPressed: controller.onSignIn,
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
