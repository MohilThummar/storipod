import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:status_view/status_view.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/string.dart';

import 'laugh_tab.controller.dart';

class LaughTabScreen extends GetView<LaughTabController> {
  const LaughTabScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView.builder(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
      itemCount: controller.allViewList.length,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Row(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 50.w,
                    height: 60.h,
                    child: StatusView(
                      radius: 24.r,
                      spacing: 10.r,
                      strokeWidth: 3,
                      indexOfSeenStatus: 1,
                      numberOfStatus: 8,
                      padding: 3,
                      seenColor: ColorPicker.skyColor,
                      unSeenColor: ColorPicker.skyColor,
                      centerImageUrl: "https://picsum.photos/200/300",
                    ),
                  ),
                  Positioned(
                    top: 38.h,
                    left: 32.w,
                    child: Image.asset(
                      height: 16.h,
                      width: 16.w,
                      controller.allViewList[index]["image"].toString(),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.allViewList[index]["name"],
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: ColorPicker.blackColor),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    controller.allViewList[index]["subName"],
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorPicker.boderBlackColor),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                AppStrings.minutesAgo,
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorPicker.offGreyLightColor),
              ),
            ],
          ),
        );
      },
    ));
  }
}
