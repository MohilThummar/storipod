import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FindnewstoryController extends GetxController {
  //TODO: Implement FindnewstoryController
  final PageController pageController = PageController(initialPage: 0);
  int activePage = 0;
  final count = 0.obs;
  // final List<Widget> pages = [PageOne(), PageTwo(), PageThree()];

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
