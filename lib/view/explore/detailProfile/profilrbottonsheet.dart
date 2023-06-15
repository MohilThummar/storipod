import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/Analytics/analytics_view.dart';


import '../../../../presentation/notification/notification.screen.dart';
import '../../../../view/reactions/profileSetting/profile_setting_view.dart';
import '../../../constant/colour.dart';
import '../../../constant/string.dart';

class ProfileBottomSheet extends StatelessWidget {
  const ProfileBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorPicker.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 34.h,
              ),
              // Center(
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Color(0xffF1F1F1),
              //       borderRadius: BorderRadius.circular(20.r),
              //     ),
              //     height: 5.h,
              //     width: 43.w,
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  Get.to(ProfileSettingView());
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, bottom: 27.5.h),
                  child: Row(
                    children: [
                      Image.asset(ImagePickerImage.settingImage,
                          height: 18.h, width: 18.w, fit: BoxFit.fill),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: ColorPicker.blackColor),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Get.to(AnalyticsView());
                  // Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, bottom: 27.5..h),
                  child: Row(
                    children: [
                      Image.asset(ImagePickerImage.analyticsImage,
                          height: 18.h, width: 18.w, fit: BoxFit.fill),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Analytics",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: ColorPicker.blackColor),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, bottom: 27.5..h),
                  child: Row(
                    children: [
                      Image.asset(ImagePickerImage.savedImage,
                          height: 18.h, width: 18.w, fit: BoxFit.fill),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Saved",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: ColorPicker.blackColor),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
           Get.to(NotificationScreen());
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, bottom: 27.5..h),
                  child: Row(
                    children: [
                      Image.asset(
                        ImagePickerImage.notificationImage,
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.fill,
                        color: ColorPicker.blackEyeColor,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: ColorPicker.blackColor),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 52.h,
              )
            ],
          )),
        ],
      ),
    );
  }
}
