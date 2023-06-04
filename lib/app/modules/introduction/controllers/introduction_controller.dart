import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroductionController extends GetxController {
  //TODO: Implement IntroductionController
  final PageController pageController = PageController(initialPage: 0);
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
