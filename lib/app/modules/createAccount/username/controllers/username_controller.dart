import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UsernameController extends GetxController {
  //TODO: Implement UsernameController
TextEditingController userNameController=TextEditingController();
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
