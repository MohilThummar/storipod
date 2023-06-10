import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';

import '../../../constant/image.dart';
import '../../../constant/string.dart';

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
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp4Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp5Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp6Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp7Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp8Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    }, {
      "color": ColorPicker.maroonColor,
      "image": ImagePickerImage.dp9Image,
      "username": AppStrings.profile2Name,
      "subName": AppStrings.SubProfile,
    },
  ];
  final count = 0.obs;
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
