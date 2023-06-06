import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../constant/image.dart';
import '../../../../constant/string.dart';

class SearchstoryController extends GetxController {
  //TODO: Implement SearchstoryController
  TextEditingController searchController = TextEditingController();
  final count = 0.obs;
  List storyList = [
    {
      "name": AppStrings.everyRound,
      "image": ImagePickerImage.p6Image,
      "subName": AppStrings.countryBrown,

    },
    {
      "name": AppStrings.citizens,
      "image": ImagePickerImage.p7Image,
      "subName": AppStrings.adegeji,

    }
  ];
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
