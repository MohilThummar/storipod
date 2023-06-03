import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserdetailController extends GetxController {
  //TODO: Implement UserdetailController
TextEditingController emailController=TextEditingController();
TextEditingController firstNameController=TextEditingController();
TextEditingController lastNameController=TextEditingController();
TextEditingController phoneNumberController=TextEditingController();

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
