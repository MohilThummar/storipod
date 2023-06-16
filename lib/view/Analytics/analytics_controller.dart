import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AnalyticsController extends GetxController {
  //TODO: Implement AnalyticsController
TextEditingController dateController=TextEditingController();
  final count = 0.obs;

  void increment() => count.value++;
}
