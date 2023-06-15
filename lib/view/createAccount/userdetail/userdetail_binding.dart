import 'package:get/get.dart';

import 'userdetail_controller.dart';

class UserdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<UserdetailController>(
       UserdetailController(),
    );
  }
}
