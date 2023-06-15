import 'package:get/get.dart';

import 'navbar_screen_controller.dart';

class NavbarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavbarScreenController>(
       NavbarScreenController(),
    );
  }
}
