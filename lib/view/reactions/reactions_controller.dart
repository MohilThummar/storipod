import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactionsController extends GetxController with GetSingleTickerProviderStateMixin{
  //TODO: Implement ReactionsController
  late TabController tabController;
  ReactionsController controller = Get.put(ReactionsController());
  RxInt indexTab = 2.obs;
  final count = 0.obs;
  @override
  void onInit() {

    tabController =
        TabController(length: 3, vsync: this, animationDuration: Duration.zero);
    super.onInit();
  }


  void increment() => count.value++;
}
