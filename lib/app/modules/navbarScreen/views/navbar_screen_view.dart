import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/explore/detailProfile/views/detail_profile_view.dart';
import 'package:storipod_app/app/modules/explore/views/explore_view.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import 'package:storipod_app/main.dart';
import '../../../constant/string.dart';
import '../../explore/SeeAllProfile/views/see_all_profile_view.dart';
import '../../homeStory/views/home_story_view.dart';
import '../controllers/navbar_screen_controller.dart';

class NavbarScreenView extends StatefulWidget {
  const NavbarScreenView({Key? key}) : super(key: key);

  @override
  State<NavbarScreenView> createState() => _NavbarScreenViewState();
}

class _NavbarScreenViewState extends State<NavbarScreenView> {
  NavbarScreenController controller = Get.put(NavbarScreenController());
List screen = <Widget>[
    HomeStoryView(),
   !showProfile.value? ExploreView():SeeAllProfileView(),
    !isLogin.value ? LoginView():DetailProfileView()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
              () {
                screen = <Widget>[
                  HomeStoryView(),
                  !showProfile.value? ExploreView():SeeAllProfileView(),
                  !isLogin.value ? LoginView():DetailProfileView()
                ];

                return screen[correntIndex.value];
          }
      ),
      bottomNavigationBar: Obx(
     () {
          return Container(
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
              currentIndex: correntIndex.value,
              onTap: controller.changeSelectedItem,
              items: [
                BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () {
                      // Get.offAll(HomeStoryView());

                      correntIndex.value = 0;
                    },
                    child: Image.asset(
                      ImagePickerImage.storiesIcon,
                      height: 30.h,
                      width: 20.w,
                      color: correntIndex.value == 0
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

                        correntIndex.value = 1;
                      },
                      child: Image.asset(
                        ImagePickerImage.SearchImage,
                        height: 26.h,
                        width: 24.w,
                        color: correntIndex.value == 1
                            ? ColorPicker.blackColor
                            : Color(0xff838385),
                      )),
                  label: AppStrings.explore,
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () {
                      // Get.to(LoginView());

                      correntIndex.value = 2;
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
          );
        }
      ),
    );
  }
}
