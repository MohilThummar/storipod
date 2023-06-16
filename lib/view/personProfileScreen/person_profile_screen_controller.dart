import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonProfileScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement PersonProfileScreenController
  RxInt indexTab = 2.obs;
  final count = 0.obs;
  late TabController tabController;
  @override
  void onInit() {
    super.onInit();
    tabController =
        TabController(length: 3,  animationDuration: Duration.zero, vsync: this);

  }



  void increment() => count.value++;
}
