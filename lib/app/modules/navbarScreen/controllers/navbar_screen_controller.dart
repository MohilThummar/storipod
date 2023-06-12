import 'package:get/get.dart';

class NavbarScreenController extends GetxController {
  //TODO: Implement NavbarScreenController
  RxInt selectedItemIndex = 1.obs;

  void changeSelectedItem(int index) {
    selectedItemIndex.value = index;
  }

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
