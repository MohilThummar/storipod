import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditEmailController extends GetxController {
  //TODO: Implement EditEmailController
TextEditingController emailController=TextEditingController();
  final count = 0.obs;


  void increment() => count.value++;
}
