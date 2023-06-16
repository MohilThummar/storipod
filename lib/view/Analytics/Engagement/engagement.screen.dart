import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:storipod_app/app/common/app_text_field.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';


import 'engagement.controller.dart';

class EngagementScreen extends GetView<EngagementController> {
  const EngagementScreen({Key? key}) : super(key: key);

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
            'Reach',
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
              height: 26.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
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
            ),
            SizedBox(
              height: 21.h,
            ),
            Center(
              child: Text(
                "132 accounts reached",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: ColorPicker.blackColor,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: "You've Reached",
                      style: TextStyle(
                          color: ColorPicker.offGreyLightColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                        text: ' +200% ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xff34A853))),
                    TextSpan(
                      text: "more Accounnts Beetween Jun 5 - Jun 14",
                      style: TextStyle(
                          color: ColorPicker.offGreyLightColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Divider(
              color: ColorPicker.subGreyColor.withOpacity(0.3),
              height: 1,
              indent: 2,
              endIndent: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Audience engagement",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorPicker.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    ImagePickerImage.about,
                    height: 17.5.h,
                    width: 17.5.w,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 105.h,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(const EngagementScreen());
                    },
                    child: Container(
                      width: 291.w,
                      margin: EdgeInsets.only(right: 20.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorPicker.boderBlackColor.withOpacity(0.3),
                          ),
                          color: ColorPicker.lightWhiteColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.w)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ColorPicker.light2Color),
                              ),
                              Text(
                                "100%",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPicker.blackColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            // width: 259.w,
                            lineHeight: 8.0,
                            percent: 0.9,
                            barRadius: const Radius.circular(10),
                            progressColor: const Color(0xff5F6DEF),
                            animation: true,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),

                          ///Non Followers==========
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Non Followers",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ColorPicker.light2Color),
                              ),
                              Text(
                                "30%",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPicker.blackColor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            // width: 259.w,
                            lineHeight: 8.0,
                            percent: 0.3,
                            barRadius: const Radius.circular(10),
                            progressColor: const Color(0xff5F6DEF),
                            animation: true,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Slide interactions",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorPicker.blackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    ImagePickerImage.about,
                    height: 17.5.h,
                    width: 17.5.w,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.25.h,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Interactions",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorPicker.blackColor),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Jun 5 - Jul 10",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorPicker.offGreyLightColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "132",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorPicker.blackColor),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "+238%",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorPicker.greenColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [     Text(
                "Likes",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorPicker.light2greyColor),),


                Text(
                  "30",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: ColorPicker.blackColor),
              ),],),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),              child: Divider(
                color: ColorPicker.subGreyColor.withOpacity(0.3),
                height: 1,
                indent: 2,
                endIndent: 1,
                thickness: 1,
              ),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [     Text(
                  "Comments",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorPicker.light2greyColor),),


                  Text(
                    "200",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),],),
            ),
            SizedBox(height: 24.h,), Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Top slide",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorPicker.blackColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 154.h,
              padding: EdgeInsets.only(left: 20.w),
              // color: Colors.amberAccent,
              child: ListView.builder(
                itemCount: controller.storiesData.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  top: 20.h,
                ),
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(right: 23.w),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 48.r,
                            backgroundColor: controller.storiesData[index]
                                ["color"],
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              child: Text(
                                controller.storiesData[index]["imgText"],
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8.sp,
                                    color: ColorPicker.whiteColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          controller.storiesData[index]["username"],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: ColorPicker.blackColor),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
