import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/constant/image.dart';

import '../../../../app/common/commanpaddingcolumn.dart';
import '../../../../app/constant/colour.dart';
import '../../../../app/constant/string.dart';
import '../../../createAccount/bottomsheet.dart';
import '../editEmail/edit_email.screen.dart';
import 'edit_profile.controller.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

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
            'Edit profile',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 26.h,
            ),
            Center(
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: const AssetImage(ImagePickerImage.profileIcon),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  CustomBottomSheet(),
                  isDismissible: true,
                  enableDrag: true,
                );
              },
              child: Center(
                child: Text(
                  "Change profile photo",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPicker.linkColor),
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const EditEmailScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorPicker.greWhiteColor,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorPicker.offGreyLightColor),
                    ),
                    const Spacer(),
                    Text(
                      "jamesnelsona1@gmail.com",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorPicker.blackColor),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.offGreyLightColor),
                  ),
                  const Spacer(),
                  Text(
                    "+2347039127480",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.offGreyLightColor),
                  ),
                  const Spacer(),
                  Text(
                    "Male",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Date of birth",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.offGreyLightColor),
                  ),
                  const Spacer(),
                  Text(
                    "7 March, 2022",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 230.h,
            ),
            Center(
              child: buttonWidget(
                redius: 12.r,
                context: context,
                height: 48.h,
                width: double.infinity,
                onPressed: () {},
                textColor: ColorPicker.whiteColor,
                title: AppStrings.done,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
