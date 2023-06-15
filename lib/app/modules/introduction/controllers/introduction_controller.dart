import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../views/introduction_view.dart';

class IntroductionController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  RxInt activePage = 0.obs;

  final List<Widget> pages = [PageOne(), PageTwo(), PageThree()];

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

  void increment() => activePage.value++;
}
