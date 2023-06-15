import 'package:get/get.dart';

import 'findnewstory_controller.dart';

class FindnewstoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindnewstoryController>(
      () => FindnewstoryController(),
    );
  }
}
