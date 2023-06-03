import 'package:get/get.dart';

import '../controllers/forgotaccount_controller.dart';

class ForgotaccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotaccountController>(
      () => ForgotaccountController(),
    );
  }
}
