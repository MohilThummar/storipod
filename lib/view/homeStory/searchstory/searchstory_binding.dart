import 'package:get/get.dart';

import 'searchstory_controller.dart';

class SearchstoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SearchstoryController>(
     SearchstoryController(),
    );
  }
}
