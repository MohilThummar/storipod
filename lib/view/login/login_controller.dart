import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isNameFocused = false.obs;
  RxBool showPassword = false.obs;

  void togglePasswordVisibility() {
    showPassword.value = !showPassword.value;
  }

  final RxBool _isFocused = false.obs;

  void onTextFieldClicked() {
    _isFocused.value = true;
  }

  @override
  void onClose() {
    _isFocused.close();
    super.onClose();
  }


  void increment() => count.value++;
}
