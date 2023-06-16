import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../app/constant/colour.dart';
import '../../../app/constant/image.dart';
import '../../../app/constant/string.dart';



class EngagementController extends GetxController {
  //TODO: Implement EngagementController
  TextEditingController dateController=TextEditingController();
  final count = 0.obs;
  List storiesData = [
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.profileIcon,
      "username": "10.0k reach"

    },
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.sky2Color,
      "image": ImagePickerImage.profileIcon,
      "username": "10.0k reach"
    },
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.boderBlackColor,
      "image": ImagePickerImage.profileIcon,
      "username": "10.0k reach"
    }
  ];

  void increment() => count.value++;
}
