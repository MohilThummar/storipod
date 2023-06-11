import 'package:get/get.dart';

class ProfileScreenController extends GetxController {
  //TODO: Implement ProfileScreenController

  List imagess = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png"
  ];
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
