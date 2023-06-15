import 'dart:async';

import 'package:get/get.dart';
import 'package:storipod_app/app/routes/app_pages.dart';

class OnBoardingController extends GetxController {
  pageNavigate() {
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(Routes.INTRODUCTION));
  }

  @override
  void onInit() {
    pageNavigate();
    super.onInit();
  }
}
