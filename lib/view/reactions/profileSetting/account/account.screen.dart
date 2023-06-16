import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/view/reactions/profileSetting/editInformation/edit_information.screen.dart';
import 'account.controller.dart';

class AccountScreen extends GetView<AccountController> {
  const AccountScreen({Key? key}) : super(key: key);
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
            'Accounts',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: ColorPicker.blackColor),
          ),
        ),

        centerTitle: true,
      ),
      body: Column(
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
            height: 33.h,
          ),
          GestureDetector(onTap: (){    Get.to(const EditInformationScreen());},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
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
            margin: EdgeInsets.symmetric(horizontal: 20.w),
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
            margin: EdgeInsets.symmetric(horizontal: 20.w),
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
            margin: EdgeInsets.symmetric(horizontal: 20.w),
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
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
