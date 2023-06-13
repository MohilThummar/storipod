import 'package:get/get.dart';

class DetailProfileController extends GetxController {
  //TODO: Implement DetailProfileController
  RxBool clicked = false.obs;
  final count = 0.obs;
  void buttonUnfollow() {
    clicked.value = !clicked.value;
  }

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
