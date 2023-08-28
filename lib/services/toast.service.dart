import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToastService {
  static void showSuccess(String message) {
    Get.snackbar("Success", message,
        backgroundColor: Colors.green, colorText: Colors.white);
  }

  static void showError(String message) {
    Get.snackbar("Error", message,
        backgroundColor: Colors.red, colorText: Colors.white);
  }

  static void showInfo(String message) {
    Get.snackbar("Info", message,
        backgroundColor: Colors.blue, colorText: Colors.black);
  }

  static void showWarning(String message) {
    Get.snackbar("Warning", message,
        backgroundColor: Colors.orange[300], colorText: Colors.white);
  }
}
