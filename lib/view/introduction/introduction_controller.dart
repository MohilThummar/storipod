import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'introduction_view.dart';

class IntroductionController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  RxInt activePage = 0.obs;

  final List<Widget> pages = [pageOne(), pageTwo(), pageThree()];



  void increment() => activePage.value++;
}
