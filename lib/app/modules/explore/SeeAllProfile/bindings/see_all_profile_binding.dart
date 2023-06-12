import 'package:get/get.dart';

import '../controllers/see_all_profile_controller.dart';

class SeeAllProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeeAllProfileController>(
      () => SeeAllProfileController(),
    );
  }
}
