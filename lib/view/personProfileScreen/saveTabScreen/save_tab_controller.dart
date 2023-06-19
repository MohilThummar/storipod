import 'package:get/get.dart';

import '../person_profile_screen_controller.dart';

class SaveTabScreenController extends GetxController {
  //TODO: Implement SaveTabScreenController
  PersonProfileScreenController personProfileScreenController =
      Get.find();
  final count = 0.obs;

  void increment() => count.value++;
}
