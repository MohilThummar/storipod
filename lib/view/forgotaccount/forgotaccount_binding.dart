import 'package:get/get.dart';

import 'forgotaccount_controller.dart';

class ForgotaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ForgotaccountController>(
      ForgotaccountController(),
    );
  }
}
