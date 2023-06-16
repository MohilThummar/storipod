import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';

import '../../../../app/common/app_button.dart';
import '../../../../app/common/app_text_field.dart';
import '../../../../app/constant/colour.dart';
import '../../../../app/constant/image.dart';
import '../../../../app/constant/string.dart';
import 'change_password.controller.dart';

class ChangePasswordScreen extends GetView<ChangePasswordController> {
  const ChangePasswordScreen({Key? key}) : super(key: key);

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
            'Password',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: ColorPicker.blackColor),
          ),
        ),

        centerTitle: true,
      ),
      body: commanPaddingWidget(
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                "This information is private. To make public, please update your settings. ",
                style: TextStyle(
                    color: ColorPicker.offGreishColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomPasswordTextField(
                suffixIconData1: controller.oldShowPassword.value
                    ? ImagePickerImage.showEyeImage
                    : ImagePickerImage.hiddenImage,
                OnTapSuffix: () {
                  controller.toggleOldPasswordVisibility();
                },
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                controller: controller.oldPasswordController,
                hintText: "Current password",
                onTap: () {},
                obscureText: !controller.oldShowPassword.value,
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomPasswordTextField(
                suffixIconData1: controller.showPassword.value
                    ? ImagePickerImage.showEyeImage
                    : ImagePickerImage.hiddenImage,
                OnTapSuffix: () {
                  controller.togglePasswordVisibility();
                },
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                controller: controller.passwordController,
                hintText: "New password",
                onTap: () {},
                obscureText: !controller.showPassword.value,
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomPasswordTextField(
                OnTapSuffix: () {
                  controller.toggleconformPasswordVisibility();
                },
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                suffixIconData1: controller.conformShowPassword.value
                    ? ImagePickerImage.showEyeImage
                    : ImagePickerImage.hiddenImage,
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                controller: controller.confirmPasswordController,
                hintText: "New password, again",
                onTap: () {},
                obscureText: !controller.conformShowPassword.value,
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ButtonWidget(
                  redius: 12.r,
                  context: context,
                  height: 55.h,
                  width: double.infinity,
                  onPressed: () {
                    Get.back();
                    Get.snackbar("Password was changed successfully", "",
                        onTap: (a) {},
                        isDismissible: true,
                        messageText: Container(
                          height:
                              5.h, // Adjust the height as per your requirement
                        ),
                        snackStyle: SnackStyle.FLOATING,
                        borderRadius: 8.r,
                        colorText: ColorPicker.whiteColor,
                        icon: CircleAvatar(
                            radius: 10.r,
                            backgroundColor: ColorPicker.whiteColor,
                            child: Icon(Icons.done,
                                size: 10.sp, color: Colors.green)),
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        maxWidth: double.infinity);
                  },
                  textColor: ColorPicker.whiteColor,
                  title: AppStrings.done,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.appButtonColor,
                  disableColor: ColorPicker.appButtonColor,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
