import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/routes/app_pages.dart';

import '../../../../app/constant/colour.dart';
import '../../../../app/constant/image.dart';
import '../changePassword/change_password.screen.dart';
import 'wallet.controller.dart';

class WalletScreen extends GetView<WalletController> {
  const WalletScreen({Key? key}) : super(key: key);

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
            'Security',
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Text(
                "This information is private. To make public, please update your settings. ",
                style: TextStyle(
                    color: ColorPicker.offGreyLightColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
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
                    ImagePickerImage.keyImage,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(Routes.changePassword);
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
                    ImagePickerImage.factorImage,
                    height: 15.h,
                    width: 15.w,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Two-factor Authentication",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        Get.to(Routes.wallet);
                      },
                      child: Text(
                        "Coming soon",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorPicker.linkColor),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
