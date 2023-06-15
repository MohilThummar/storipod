import 'package:get/get.dart';

import '../../../constant/colour.dart';
import '../../../constant/image.dart';
import '../../../constant/string.dart';

class SeeAllProfileController extends GetxController {
  //TODO: Implement SeeAllProfileController

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  List storiesGrideData = [
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.profileIcon,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp2Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp3Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp4Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp5Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp6Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp7Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },   {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp7Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },   {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp7Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
    {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
  ];

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
