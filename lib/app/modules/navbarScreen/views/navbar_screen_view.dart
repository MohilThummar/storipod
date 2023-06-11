import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/explore/views/explore_view.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/views/story_edit_view.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import 'package:storipod_app/app/modules/recommendation/views/recommendation_view.dart';

import '../../../constant/string.dart';
import '../../homeStory/views/home_story_view.dart';
import '../controllers/navbar_screen_controller.dart';

class NavbarScreenView extends GetView<NavbarScreenController> {
  const NavbarScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavbarScreenController());
    return Obx(() {
      return Container(
        height: 75.h,
        child: BottomNavigationBar(
          unselectedFontSize: 12.sp,
          selectedFontSize: 12.sp,
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
          selectedItemColor: ColorPicker.blackColor,
          unselectedItemColor: ColorPicker.boderBlackColor,
          currentIndex: controller.selectedItemIndex.value,
          onTap: controller.changeSelectedItem,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Get.offAll(ExploreView());
                },
                child: Image.asset(
                  ImagePickerImage.storiesIcon,
                  height: 30.h,
                  width: 20.w,
                ),
              ),
              label: AppStrings.stories,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Get.to(HomeStoryView());
                  },
                  child: Image.asset(
                    ImagePickerImage.SearchImage,
                    height: 26.h,
                    width: 24.w,
                    color: ColorPicker.greyColor,
                  )),
              label: AppStrings.explore,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Get.to(LoginView());
                },
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundImage: AssetImage(ImagePickerImage.profileIcon),
                ),
              ),
              label: AppStrings.profile,
            ),
          ],
        ),
      );
    });
  }
}
