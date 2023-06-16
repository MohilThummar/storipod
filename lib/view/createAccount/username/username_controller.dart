import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UsernameController extends GetxController {
  //TODO: Implement UsernameController
TextEditingController userNameController=TextEditingController();
  final count = 0.obs;



  void increment() => count.value++;
}
