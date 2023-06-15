import 'package:get/get.dart';

import 'person_profile_screen_controller.dart';

class PersonProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PersonProfileScreenController>(
       PersonProfileScreenController(),
    );
  }
}
