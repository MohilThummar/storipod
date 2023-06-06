import 'package:get/get.dart';

import '../controllers/home_story_controller.dart';

class HomeStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeStoryController>(
      () => HomeStoryController(),
    );
  }
}
