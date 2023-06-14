import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditEmailController extends GetxController {
  //TODO: Implement EditEmailController
TextEditingController emailController=TextEditingController();
  final count = 0.obs;
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
