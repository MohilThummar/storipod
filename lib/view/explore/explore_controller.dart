import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';

import '../../app/constant/image.dart';
import '../../app/constant/string.dart';

class ExploreController extends GetxController {
  //TODO: Implement ExploreController

  List storiesData = [
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.profileIcon,
      "username": AppStrings.mellow,
      "subName": AppStrings.profileName,
    },
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.sky2Color,
      "image": ImagePickerImage.profileIcon,
      "username": AppStrings.mellow,
      "subName": AppStrings.profileName,
    },
    {
      "imgText": AppStrings.img1,
      "color": ColorPicker.boderBlackColor,
      "image": ImagePickerImage.profileIcon,
      "username": AppStrings.mellow,
      "subName": AppStrings.profileName,
    }
  ];

  List storiesGrideData = [
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.profileIcon,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp2Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp3Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp4Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp5Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp6Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp7Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
  ];
  final count = 0.obs;

  void increment() => count.value++;
}
