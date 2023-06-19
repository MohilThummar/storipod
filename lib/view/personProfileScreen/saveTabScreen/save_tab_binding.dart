import 'package:get/get.dart';
import 'package:storipod_app/view/personProfileScreen/saveTabScreen/save_tab_controller.dart';

class SaveTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SaveTabScreenController>(
      SaveTabScreenController(),
    );
  }
}
