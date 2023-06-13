import 'package:get/get.dart';

import '../controllers/person_profile_screen_controller.dart';

class PersonProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonProfileScreenController>(
      () => PersonProfileScreenController(),
    );
  }
}
