import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../app/constant/image.dart';
import '../../../app/constant/string.dart';

class SearchstoryController extends GetxController {
  //TODO: Implement SearchstoryController
  TextEditingController searchController = TextEditingController();
  final count = 0.obs;
  RxString maintain = "".obs;
  List storyList = [
    {
      "name": AppStrings.everyRound,
      "image": ImagePickerImage.p6Image,
      "subName": AppStrings.countryBrown,

    },
    {
      "name": AppStrings.citizens,
      "image":ImagePickerImage.p7Image,
      "subName": AppStrings.adegeji,

    }
  ];


  void increment() => count.value++;
}
