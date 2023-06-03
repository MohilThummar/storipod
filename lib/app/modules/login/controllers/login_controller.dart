import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

  void increment() => count.value++;
}
