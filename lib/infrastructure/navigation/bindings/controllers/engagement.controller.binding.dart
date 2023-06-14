import 'package:get/get.dart';

import '../../../../app/modules/Analytics/Engagement/controllers/engagement.controller.dart';

class EngagementControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EngagementController>(
      () => EngagementController(),
    );
  }
}
