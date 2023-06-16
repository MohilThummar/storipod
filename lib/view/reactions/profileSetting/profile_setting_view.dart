
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/routes/app_pages.dart';


import 'profile_setting_controller.dart';

class ProfileSettingView extends GetView<ProfileSettingController> {
  const ProfileSettingView({Key? key}) : super(key: key);

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
            'Settings',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: ColorPicker.blackColor),
          ),
        ),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),

            ///Account===================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.person,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Accounts",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.account);

                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorPicker.offGreyLightColor,
                      size: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),

            /// Security==================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.security,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Security",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorPicker.offGreyLightColor,
                    size: 16.sp,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),

            /// Wallet==========================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.wellet,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.wallet);
                      // Get.to(const WalletScreen());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorPicker.offGreyLightColor,
                      size: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),

            /// About===================
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.about,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(Routes.account);
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorPicker.offGreyLightColor,
                      size: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 72.h,
            ),
            Divider(
              color: ColorPicker.subGreyColor.withOpacity(0.3),
              height: 1,
              indent: 2,
              endIndent: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Storipod",
                style: TextStyle(
                    fontFamily: "Bangers",
                    color: ColorPicker.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
              child: Text(
                "This is your Storipod control center, you can make changes to your profile and account from here.",
                style: TextStyle(
                    color: ColorPicker.blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Divider(
              color: ColorPicker.subGreyColor.withOpacity(0.3),
              height: 1,
              indent: 2,
              endIndent: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log out",
                        style: TextStyle(
                            color: ColorPicker.offGreyLightColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp),
                      ),
                      Text(
                        "Courtney Brown",
                        style: TextStyle(
                            color: ColorPicker.blackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.login_outlined,
                    color: ColorPicker.redColor,
                    size: 25.sp,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
