import 'package:get/get.dart';
import 'package:storipod_app/app/modules/personProfileScreen/controllers/person_profile_screen_controller.dart';

class SaveTabScreenController extends GetxController {
  //TODO: Implement SaveTabScreenController
  PersonProfileScreenController personProfileScreenController =
      Get.find();
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
