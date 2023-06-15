import 'package:get/get.dart';

import 'secureaccount_controller.dart';

class SecureaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SecureaccountController>(
       SecureaccountController(),
    );
  }
}
