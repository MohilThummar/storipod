import 'package:get/get.dart';

import 'see_all_profile_controller.dart';

class SeeAllProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SeeAllProfileController>(
     SeeAllProfileController(),
    );
  }
}
