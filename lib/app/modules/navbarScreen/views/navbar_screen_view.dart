import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import 'package:storipod_app/app/modules/recommendation/views/recommendation_view.dart';

import '../../../constant/string.dart';
import '../controllers/navbar_screen_controller.dart';

class NavbarScreenView extends GetView<NavbarScreenController> {
  const NavbarScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavbarScreenController());
    return Obx(() {
      return BottomNavigationBar(
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
            icon: InkWell(onTap: (){},
              child: Image.asset(
                ImagePickerImage.storiesIcon,
                height: 30,
                width: 20,
              ),
            ),
            label: AppStrings.stories,
          ),
          BottomNavigationBarItem(
            icon: InkWell(onTap: (){

              Get.to(RecommendationView());
            },
              child: Icon(
                Icons.search,
                size: 35,
              ),
            ),
            label: AppStrings.explore,
          ),
          BottomNavigationBarItem(
            icon:InkWell(onTap: (){
              Get.to(LoginView());

            },
              child: CircleAvatar(
                minRadius: 18,
                maxRadius: 18,
                backgroundImage: AssetImage(ImagePickerImage.profileIcon),
              ),
            ),
            label: AppStrings.profile,
          ),
        ],
      );
    });
  }
}
