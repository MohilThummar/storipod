import 'package:get/get.dart';

import '../controllers/user_follower_controller.dart';

class UserFollowerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserFollowerController>(
      () => UserFollowerController(),
    );
  }
}
