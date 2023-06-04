import 'package:get/get.dart';

import '../controllers/findnewstory_controller.dart';

class FindnewstoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindnewstoryController>(
      () => FindnewstoryController(),
    );
  }
}
