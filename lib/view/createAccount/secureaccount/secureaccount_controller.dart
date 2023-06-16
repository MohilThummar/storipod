import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecureaccountController extends GetxController {
  //TODO: Implement SecureaccountController
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final count = 0.obs;

  RxBool showPassword = false.obs;
  RxBool conformShowPassword = false.obs;

  // Focus focusNode.;

  RxBool isTextFieldEnabled = false.obs;

  void togglePasswordVisibility() {
    showPassword.value = !showPassword.value;
  }

  void toggleconformPasswordVisibility() {
    conformShowPassword.value = !conformShowPassword.value;
  }

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
}
