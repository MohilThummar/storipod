import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'edit_email.controller.dart';

class EditEmailScreen extends GetView<EditEmailController> {
  const EditEmailScreen({Key? key}) : super(key: key);
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
              'Edit information',
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
                height: 24.h,
              ),
              Text(
                "You are about to make changes to this account information.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: ColorPicker.offGreishColor),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomTextField(
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                isDense: true,
                suffixIconData1: Icon(null),
                controller: controller.emailController,
                hintText: AppStrings.enterEmail,
                onTap: () {},
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 28.h,
              ),
              Center(
                child: ButtonWidget(
                  redius: 10,
                  context: context,
                  height: 55.h,
                  width: double.infinity,
                  onPressed: () {
                    Get.to(EditProfileScreen());
                  },
                  textColor: ColorPicker.whiteColor,
                  title: "Confirm",
                  fontSize: 16.sp,
                  bgColor: ColorPicker.appButtonColor,
                  disableColor: ColorPicker.appButtonColor,
                ),
              ),
            ],
          ),
        ));
  }
}
