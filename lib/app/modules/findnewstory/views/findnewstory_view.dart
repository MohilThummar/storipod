import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/homeStory/views/home_story_view.dart';

import '../../../common/app_button.dart';
import '../../../constant/string.dart';
import '../controllers/findnewstory_controller.dart';

class FindnewstoryView extends GetView<FindnewstoryController> {
  const FindnewstoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // int? _value = 1;
    Get.put(FindnewstoryController());
    return Scaffold(
      appBar: imageAppbarWidget(context: context),
      backgroundColor: ColorPicker.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 10.h,
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
              height: 5.h,
            ),
            Text(
              AppStrings.followPeople,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15.sp,
                  color: ColorPicker.boderBlackColor),
            ),
            SizedBox(
              height: 23.h,
            ),
            Container(
              height: 500.h,
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: ColorPicker.lightWhiteColor.withOpacity(0.3),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  mainAxisSpacing: 10, // Spacing between rows
                  crossAxisSpacing: 10, // Spacing between columns
                ),
                itemCount: 10, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  // Build and return the individual grid items
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(ImagePickerImage.profileIcon),
                        radius: 40.r,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text("Richard")
                    ],
                  );
                },
              ),
            ),
            // PageView.builder(
            //   controller: controller.pageController,
            //   onPageChanged: (int page) {
            //     controller.activePage = page;
            //   },
            //   itemCount: 3,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container();
            //   },
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  Get.to(HomeStoryView());
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
