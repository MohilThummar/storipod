import 'package:get/get.dart';

import '../../../app/constant/colour.dart';
import '../../../app/constant/image.dart';
import '../../../app/constant/string.dart';


class SeeAllProfileController extends GetxController {
  //TODO: Implement SeeAllProfileController

  final count = 0.obs;


  List storiesGrideData = [
    {
      "color":
      ColorPicker.maroonColor,
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
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },   {
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
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },   {
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
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.subProfile,
    },
  ];



  void increment() => count.value++;
}
