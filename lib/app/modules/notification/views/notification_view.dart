import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';

import '../../../common/app_button.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPicker.whiteColor,
        elevation: 1,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: ColorPicker.blackColor,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: ColorPicker.blackColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorPicker.greyColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ddImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  ButtonWidget(
                    redius: 10,
                    context: context,
                    height: 36.spMax,
                    width: 67.spMax,
                    onPressed: () {
                      // Get.to(ExploreView());
                    },
                    textColor: ColorPicker.whiteColor,
                    title: "Follow",
                    fontSize: 12.sp,
                    bgColor: ColorPicker.appButtonColor,
                    disableColor: ColorPicker.appButtonColor,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ggImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fidelis Antigha commented: Ride on Samurai",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Text(
                    "View story",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: ColorPicker.skyColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.bbImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                      height: 36.spMax,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Define the border radius
                              ),
                              backgroundColor: Color(0xffF3F3F3)),
                          onPressed: () {},
                          child: Text(
                            "Following",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: ColorPicker.blackColor),
                          )))
                ],
              ),
              SizedBox(height: 24.h,),
              Text(
                'Last week',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorPicker.greyColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ddImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  ButtonWidget(
                    redius: 10,
                    context: context,
                    height: 36.spMax,
                    width: 67.spMax,
                    onPressed: () {
                      // Get.to(ExploreView());
                    },
                    textColor: ColorPicker.whiteColor,
                    title: "Follow",
                    fontSize: 12.sp,
                    bgColor: ColorPicker.appButtonColor,
                    disableColor: ColorPicker.appButtonColor,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ggImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fidelis Antigha commented: Ride on Samurai",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Text(
                    "View story",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: ColorPicker.skyColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.bbImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Container(
                      height: 36.spMax,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.r), // Define the border radius
                              ),
                              backgroundColor: Color(0xffF3F3F3)),
                          onPressed: () {},
                          child: Text(
                            "Following",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: ColorPicker.blackColor),
                          )))
                ],
              ),
              SizedBox(height: 24.h,),
              Text(
                'Suggested for you',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 19.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ddImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  ButtonWidget(
                    redius: 10,
                    context: context,
                    height: 36.spMax,
                    width: 67.spMax,
                    onPressed: () {
                      // Get.to(ExploreView());
                    },
                    textColor: ColorPicker.whiteColor,
                    title: "Follow",
                    fontSize: 12.sp,
                    bgColor: ColorPicker.appButtonColor,
                    disableColor: ColorPicker.appButtonColor,
                  ),
                  SizedBox(width: 8.w,),
                  Icon(Icons.close),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),   Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ddImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  ButtonWidget(
                    redius: 10,
                    context: context,
                    height: 36.spMax,
                    width: 67.spMax,
                    onPressed: () {
                      // Get.to(ExploreView());
                    },
                    textColor: ColorPicker.whiteColor,
                    title: "Follow",
                    fontSize: 12.sp,
                    bgColor: ColorPicker.appButtonColor,
                    disableColor: ColorPicker.appButtonColor,
                  ),
                  SizedBox(width: 8.w,),
                  Icon(Icons.close),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),   Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(ImagePickerImage.ddImage),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ekaneoffiong started following you",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "8:00 AM",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: ColorPicker.greyColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  ButtonWidget(
                    redius: 10,
                    context: context,
                    height: 36.spMax,
                    width: 67.spMax,
                    onPressed: () {
                      // Get.to(ExploreView());
                    },
                    textColor: ColorPicker.whiteColor,
                    title: "Follow",
                    fontSize: 12.sp,
                    bgColor: ColorPicker.appButtonColor,
                    disableColor: ColorPicker.appButtonColor,
                  ),
                  SizedBox(width: 8.w,),
                  Icon(Icons.close),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
