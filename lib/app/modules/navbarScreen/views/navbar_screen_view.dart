
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/explore/views/explore_view.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import '../../../constant/string.dart';
import '../../homeStory/views/home_story_view.dart';
import '../controllers/navbar_screen_controller.dart';

class NavbarScreenView extends StatefulWidget {
  const NavbarScreenView({Key? key}) : super(key: key);

  @override
  State<NavbarScreenView> createState() => _NavbarScreenViewState();
}

class _NavbarScreenViewState extends State<NavbarScreenView> {
  NavbarScreenController controller = Get.put(NavbarScreenController());
  List<Widget> screen = [HomeStoryView(), ExploreView(), LoginView()];
  int correntIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[correntIndex],
      bottomNavigationBar: Container(
        height: 75.h,
        child: BottomNavigationBar(
          selectedFontSize: 12.sp,
          selectedItemColor: ColorPicker.blackColor,
          selectedIconTheme: IconThemeData(
            color: ColorPicker.blackColor,
            size: 20.sp,
          ),
          useLegacyColorScheme: true,
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorPicker.blackColor,
              fontSize: 12.sp),
          unselectedIconTheme: IconThemeData(
            color: ColorPicker.boderBlackColor,
            size: 20.sp,
          ),
          unselectedFontSize: 12.sp,
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              color: ColorPicker.boderBlackColor,
              fontSize: 12.sp),
          unselectedItemColor: ColorPicker.boderBlackColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedItemIndex.value,
          onTap: controller.changeSelectedItem,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // Get.offAll(HomeStoryView());
                  setState(() {
                    correntIndex = 0;
                  });
                },
                child: Image.asset(
                  ImagePickerImage.storiesIcon,
                  height: 30.h,
                  width: 20.w,
                  color: correntIndex == 0
                      ? ColorPicker.blackColor
                      : ColorPicker.greyColor,
                ),
              ),
              label: AppStrings.stories,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    // Get.to(ExploreView());
                    setState(() {
                      correntIndex = 1;
                    });
                  },
                  child: Image.asset(
                    ImagePickerImage.SearchImage,
                    height: 26.h,
                    width: 24.w,
                    color: correntIndex == 1
                        ? ColorPicker.blackColor
                        : Color(0xff838385),
                  )),
              label: AppStrings.explore,
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // Get.to(LoginView());
                  setState(() {
                    correntIndex = 2;
                  });
                },
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundImage: AssetImage(
                    ImagePickerImage.profileIcon,
                  ),
                ),
              ),
              label: AppStrings.profile,
            ),
          ],
        ),
      ),
    );
  }
}
