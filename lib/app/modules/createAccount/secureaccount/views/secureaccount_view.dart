import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_text_field.dart';
import '../../../../common/appbar.dart';
import '../../../../constant/colour.dart';
import '../../../../constant/string.dart';
import '../controllers/secureaccount_controller.dart';

class SecureaccountView extends GetView<SecureaccountController> {
  const SecureaccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = true;
    @override
    void initState() {
      passwordVisible = false;
    }

    Get.put(SecureaccountController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(
        context: context,
      ),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secureAccount,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24.sp,
                      color: ColorPicker.blackColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  AppStrings.protectAccount,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: ColorPicker.subBlackColor),
                ),
                SizedBox(
                  height: 32.h,
                ),
                CustomTextField(
                  OnTapSuffix: () {
                    controller.togglePasswordVisibility();
                  },
                  padding: EdgeInsets.all(16),
                  fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                  isDense: true,
                  suffixIconData1: Icon(
                      controller.showPassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorPicker.blackEyeColor),
                  boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                  controller: controller.passwordController,
                  hintText: AppStrings.enterPasswordText,
                  onTap: () {},
                  obscureText: !controller.showPassword.value,
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextField(
                  OnTapSuffix: () {
                    controller.toggleconformPasswordVisibility();
                  },
                  padding: EdgeInsets.all(16),
                  fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                  isDense: true,
                  suffixIconData1: Icon(
                      controller.conformShowPassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorPicker.blackEyeColor),
                  boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                  controller: controller.confirmPasswordController,
                  hintText: AppStrings.confirmPassword,
                  onTap: () {},
                  obscureText: !controller.conformShowPassword.value,
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 20.h,
                ),
                ButtonWidget(redius: 10,
                  context: context,
                  height: 55,
                  width: 335,
                  onPressed: () {
                    // Get.to(SecureaccountView());
                  },
                  textColor: ColorPicker.blackColor,
                  title: AppStrings.proceed,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.offGreyColor,
                  disableColor: ColorPicker.appButtonColor,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
