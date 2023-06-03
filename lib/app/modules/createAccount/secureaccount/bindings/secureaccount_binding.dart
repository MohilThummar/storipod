import 'package:get/get.dart';

import '../controllers/secureaccount_controller.dart';

class SecureaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecureaccountController>(
      () => SecureaccountController(),
    );
  }
}
