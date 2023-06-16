import 'package:get/get.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController
  RxBool isSwitched = false.obs;
  RxBool isSwitchedEmail = false.obs;
  final count = 0.obs;


  void increment() => count.value++;
}
