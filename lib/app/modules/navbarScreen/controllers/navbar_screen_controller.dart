import 'package:get/get.dart';
import 'package:storipod_app/main.dart';

class NavbarScreenController extends GetxController {
  //TODO: Implement NavbarScreenController


  void changeSelectedItem(int index) {
    correntIndex.value=index;
    // selectedItemIndex.value = index;
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
