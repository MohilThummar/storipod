import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'notification.controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

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
            'Notifications',
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
              // margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.notificationImage,
                    height: 18.h,
                    width: 18.h,
                    fit: BoxFit.fill,
                    color: ColorPicker.blackEyeColor,
                  ),
                  const SizedBox(
                    width: 16.5,
                  ),
                  Text(
                    "Accounts reached",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  Obx(() {
                    return CupertinoSwitch(applyTheme: true,

                      onChanged: (v) {
                        controller.isSwitched.value = v;
                      },
                      value: controller.isSwitched.value,
                      // activeColor: ColorPicker.whiteColor,
                      thumbColor: ColorPicker.whiteColor,

                      activeColor: ColorPicker.appButtonColor,
                      trackColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                      // inactiveTrackColor: ColorPicker.whiteColor,
                    );
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
///Email========
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.msgImage,
                    height: 18.h,
                    width: 18.h,
                    fit: BoxFit.fill,
                    color: ColorPicker.blackEyeColor,
                  ),
                  const SizedBox(
                    width: 16.5,
                  ),
                  Text(
                    "Email notification",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  Obx(() {
                    return CupertinoSwitch(applyTheme: true,

                      onChanged: (v) {
                        controller.isSwitchedEmail.value = v;
                      },
                      value: controller.isSwitchedEmail.value,
                      // activeColor: ColorPicker.whiteColor,
                      thumbColor: ColorPicker.whiteColor,

                      activeColor: ColorPicker.appButtonColor,
                      trackColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                      // inactiveTrackColor: ColorPicker.whiteColor,
                    );
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ///Notification==========
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: ColorPicker.greWhiteColor,
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 19.h),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.soundImage,
                    height: 18.h,
                    width: 18.h,
                    fit: BoxFit.fill,
                    color: ColorPicker.blackEyeColor,
                  ),
                  const SizedBox(
                    width: 16.5,
                  ),
                  Text(
                    "Notify followers",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Get.to(ReachScreenScreen());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: ColorPicker.boderBlackColor,
                      size: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
          ],
        ),
      ),
    );
  }
}
