import 'package:get/get.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController
  RxBool isSwitched = false.obs;
  RxBool isSwitchedEmail = false.obs;
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
