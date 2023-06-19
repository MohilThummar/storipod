import 'package:get/get.dart';
import 'package:storipod_app/view/reactions/profileSetting/editEmail/edit_email.controller.dart';

class EditEmailBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<EditEmailController>(EditEmailController());
  }
}
