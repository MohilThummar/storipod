import 'package:get/get.dart';

import 'home_story_controller.dart';

class HomeStoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeStoryController>(
       HomeStoryController(),
    );
  }
}
