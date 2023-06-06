import 'package:get/get.dart';

import '../controllers/searchstory_controller.dart';

class SearchstoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchstoryController>(
      () => SearchstoryController(),
    );
  }
}
