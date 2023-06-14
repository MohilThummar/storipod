import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/modules/navbarScreen/views/navbar_screen_view.dart';
import 'package:storipod_app/main.dart';

import '../../../../common/app_button.dart';
import '../../../../common/app_text_field.dart';
import '../../../../common/appbar.dart';
import '../../../../constant/colour.dart';
import '../../../../constant/image.dart';
import '../../../../constant/string.dart';
import '../controllers/secureaccount_controller.dart';

class SecureaccountView extends GetView<SecureaccountController> {
  const SecureaccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(SecureaccountController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(
        context: context,
      ),
      body: commanPaddingWidget(
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                AppStrings.secureAccount,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 8.h,
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
                hintText: AppStrings.enterPasswordText,
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
                hintText: AppStrings.confirmPassword,
                onTap: () {},
                obscureText: !controller.conformShowPassword.value,
                inputType: TextInputType.text,
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ButtonWidget(
                  redius: 10,
                  context: context,
                  height: 55.h,
                  width: double.infinity,
                  onPressed: () {
                    correntIndex.value=1;
                    isLogin.value=true;
                    Get.offAll(NavbarScreenView());
                  },
                  textColor: ColorPicker.whiteColor,
                  title: AppStrings.proceed,
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
