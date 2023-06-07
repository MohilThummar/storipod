import 'package:get/get.dart';

import '../controllers/story_edit_controller.dart';

class StoryEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoryEditController>(
      () => StoryEditController(),
    );
  }
}
