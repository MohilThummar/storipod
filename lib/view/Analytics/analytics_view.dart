import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/view/reactions/reactions_binding.dart';

import '../../app/common/app_text_field.dart';
import 'ReachScreen/reach_screen.screen.dart';
import 'analytics_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  const AnalyticsView({Key? key}) : super(key: key);

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
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
          ),
        ),

        centerTitle: true,
      ),
      body: commanPaddingWidget(
        child: Column(children: [
          SizedBox(
            height: 24.h,
          ),
          CustomTextField(
            padding: const EdgeInsets.all(16),
            fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
            boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
            isDense: true,
            suffixIconData1: Icon(
              Icons.date_range_outlined,
              size: 24.sp,
              color: ColorPicker.blackEyeColor,
            ),
            controller: controller.dateController,
            hintText: "Select date",
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 21.h,
          ),
          Text(
            "Analytics Overview",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "You've Reached",
                  style: TextStyle(color: ColorPicker.offGreyLightColor, fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                TextSpan(text: ' +200% ', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp, color: const Color(0xff34A853))),
                TextSpan(
                  text: "more Accounnts Beetween Jun 5 - Jun 14",
                  style: TextStyle(color: ColorPicker.offGreyLightColor, fontSize: 14.sp, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),

          ///Accounts reached==================
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: ColorPicker.greWhiteColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                Text(
                  "Accounts reached",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "132",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "+238%",
                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color: ColorPicker.blackEyeColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ReachScreenScreen(), binding: ReactionsBinding());
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: ColorPicker.blackEyeColor,
                    size: 16.sp,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),

          ///Accounts Engaged===================
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: ColorPicker.greWhiteColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                Text(
                  "Accounts Engaged",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "132",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "+238%",
                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color: ColorPicker.blackEyeColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: ColorPicker.blackEyeColor,
                  size: 16.sp,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),

          ///Total followers=====================
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: ColorPicker.greWhiteColor,
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                Text(
                  "Total followers",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "132",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "+238%",
                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500, color: ColorPicker.blackEyeColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: ColorPicker.blackEyeColor,
                  size: 16.sp,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
        ]),
      ),
    );
  }
}
