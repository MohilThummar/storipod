import 'package:get/get.dart';

import '../controllers/navbar_screen_controller.dart';

class NavbarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarScreenController>(
      () => NavbarScreenController(),
    );
  }
}
