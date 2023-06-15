import 'package:get/get.dart';

import 'story_edit_controller.dart';

class StoryEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StoryEditController>(
       StoryEditController(),
    );
  }
}
