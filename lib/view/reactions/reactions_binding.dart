import 'package:get/get.dart';

import 'reactions_controller.dart';


class ReactionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReactionsController>(ReactionsController());
  }
}