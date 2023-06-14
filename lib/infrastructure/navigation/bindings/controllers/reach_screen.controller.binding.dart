import 'package:get/get.dart';

import '../../../../app/modules/Analytics/ReachScreen/controllers/reach_screen.controller.dart';

class ReachScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReachScreenController>(
      () => ReachScreenController(),
    );
  }
}
