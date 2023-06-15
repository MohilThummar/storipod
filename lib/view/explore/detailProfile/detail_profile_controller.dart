import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


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
