import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  //TODO: Implement ChangePasswordController
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  final count = 0.obs;
  RxBool showPassword = false.obs;
  RxBool oldShowPassword = false.obs;
  RxBool conformShowPassword = false.obs;

  // Focus focusNode.;

  RxBool isTextFieldEnabled = false.obs;

  void togglePasswordVisibility() {
    showPassword.value = !showPassword.value;
  }
  void toggleOldPasswordVisibility() {
    oldShowPassword.value = !oldShowPassword.value;
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

  void increment() => count.value++;
}
