import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';

import '../../../constant/colour.dart';
import 'about_app.controller.dart';

class AboutAppScreen extends GetView<AboutAppController> {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorPicker.whiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.back(canPop: true);
          },
          child: Padding(
              padding: EdgeInsets.only(left: 10.w, top: 28.h, bottom: 16.h),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 15.sp,
                color: ColorPicker.blackColor,
              )),
        ),
        // leadingWidth: 0,
        elevation: 1,
        toolbarHeight: 62.h,
        title: Padding(
          padding: EdgeInsets.only(top: 28.h, bottom: 16.h),
          child: Text(
            'About',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: ColorPicker.blackColor),
          ),
        ),

        centerTitle: true,
      ),
      body: commanPaddingWidget(
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.GrewhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Get.to(AccountScreen());
                    },
                    child: Text(
                      "Go to site",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.linkColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.GrewhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Terms of use",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Get.to(AccountScreen());
                    },
                    child: Text(
                      "Go to site",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.linkColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'This information will not be displayed to the public except you agree to let the general public have access to it, it remains private to you. This information will not be displayed to the public except you agree to let the general public have access to it, it remains private to you.',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: ColorPicker.offGreishColor,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "This information will not be displayed to the public except you agree to let the general public have access to it, it remains private to you. ",
              style: TextStyle(
                  fontSize: 12.sp,
                  color: ColorPicker.offGreishColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
