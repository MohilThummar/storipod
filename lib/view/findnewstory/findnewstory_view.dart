import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/routes/app_pages.dart';
import 'package:storipod_app/view/navbarScreen/navbar_screen_binding.dart';
import '../../../view/navbarScreen/navbar_screen_view.dart';

import '../../app/common/app_button.dart';
import '../../app/constant/string.dart';
import 'findnewstory_controller.dart';

class FindnewstoryView extends GetView<FindnewstoryController> {
  const FindnewstoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: imageAppbarWidget(
        context: context,
      ),
      backgroundColor: ColorPicker.whiteColor,
      body: commanPaddingWidget(
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                AppStrings.findNEwStory,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                AppStrings.followPeople,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.boderBlackColor),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 380.h,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: ColorPicker.lightWhiteColor.withOpacity(0.3),
                ),
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (int page) {
                    controller.activePage = page;
                  },
                  itemCount: controller.pagesGrid.length,
                  itemBuilder: (BuildContext context, int index) {
                    return controller
                        .pagesGrid[index % controller.pagesGrid.length];
                  },
                ),
              ),
              SizedBox(
                height: 114.h,
              ),
              Center(
                child: buttonWidget(
                  redius: 10,
                  context: context,
                  height: 55.h,
                  width: double.infinity,
                  onPressed: () {
                    Get.offAll(const NavbarScreenView(),
                        binding: NavbarScreenBinding());
                  },
                  textColor: ColorPicker.whiteColor,
                  title: AppStrings.proceed,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.appButtonColor,
                  disableColor: ColorPicker.appButtonColor,
                ),
              ),
            ]),
            Positioned(
              bottom: 60.h,
              left: 0,
              right: 0,
              height: 0.22.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    controller.pagesGrid.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: GestureDetector(
                            onTap: () {
                              controller.pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 4.r,
                              backgroundColor: controller.activePage == index
                                  ? Colors.blueAccent
                                  : Colors.blueAccent.withOpacity(0.4),
                            ),
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

pageOneDone() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Number of columns in the grid
      mainAxisSpacing: 10,
      mainAxisExtent: 120.h, // Spacing between rows
      crossAxisSpacing: 10, // Spacing between columns
    ),
    itemCount: 9, // Number of items in the grid
    itemBuilder: (BuildContext context, int index) {
      // Build and return the individual grid items
      return Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: ColorPicker.skyColor.withOpacity(0.2),
            child: CircleAvatar(
              backgroundImage: const AssetImage(ImagePickerImage.profileIcon),
              radius: 36.r,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Richard",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: ColorPicker.blackColor),
          )
        ],
      );
    },
  );
}

pageTwoDone() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Number of columns in the grid
      mainAxisSpacing: 10,
      mainAxisExtent: 120.h, // Spacing between rows
      crossAxisSpacing: 10, // Spacing between columns
    ),
    itemCount: 7, // Number of items in the grid
    itemBuilder: (BuildContext context, int index) {
      // Build and return the individual grid items
      return Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: ColorPicker.skyColor.withOpacity(0.2),
            child: CircleAvatar(
              backgroundImage: const AssetImage(ImagePickerImage.profileIcon),
              radius: 36.r,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Richard",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: ColorPicker.blackColor),
          )
        ],
      );
    },
  );
}

pageThreeDone() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Number of columns in the grid
      mainAxisSpacing: 10,
      mainAxisExtent: 120.h, // Spacing between rows
      crossAxisSpacing: 10, // Spacing between columns
    ),
    itemCount: 8, // Number of items in the grid
    itemBuilder: (BuildContext context, int index) {
      // Build and return the individual grid items
      return Column(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: ColorPicker.skyColor.withOpacity(0.2),
            child: CircleAvatar(
              backgroundImage: const AssetImage(ImagePickerImage.profileIcon),
              radius: 36.r,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Richard",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: ColorPicker.blackColor),
          )
        ],
      );
    },
  );
}
