import 'package:get/get.dart';

import 'explore_controller.dart';

class ExploreBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ExploreController>(
      ExploreController(),
    );
  }
}
