import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/app_text_field.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/view/createAccount/create_account_view.dart';
import 'package:storipod_app/view/forgotaccount/forgotaccount_binding.dart';
import 'package:storipod_app/view/forgotaccount/forgotaccount_view.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(
        context: context,
      ),
      body: commanPaddingWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              AppStrings.welcome,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp,
                  color: ColorPicker.blackColor),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Text(
                  AppStrings.backJames,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: ColorPicker.subBlackColor),
                ),
                Image.asset(
                  ImagePickerImage.smileyImage,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.fill,
                )
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            CustomTextField(
              padding: const EdgeInsets.all(16),
              fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
              boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
              isDense: true,
              suffixIconData1: const Icon(null),
              controller: controller.emailIdController,
              hintText: AppStrings.enterEmail,
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 12.h,
            ),
            Obx(() {
              return CustomPasswordTextField(
                suffixIconData1: controller.showPassword.value
                    ? ImagePickerImage.showEyeImage
                    : ImagePickerImage.hiddenImage,
                onTapSuffix: () {
                  controller.togglePasswordVisibility();
                },
                padding: const EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                controller: controller.passwordController,
                hintText: AppStrings.enterPassword,
                onTap: () {},
                obscureText: !controller.showPassword.value,
                inputType: TextInputType.text,
              );
            }),
            SizedBox(
              height: 12.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    text: AppStrings.forGotPassword,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: ColorPicker.subBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(const ForgotaccountView(),binding: ForgotaccountBinding());
                          },
                        text: AppStrings.recover,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12.sp,
                            color: ColorPicker.skyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: buttonWidget(
                redius: 10.r,
                context: context,
                height: 0.055.sh,
                width: double.infinity,
                onPressed: () {
                  Get.offAll(const CreateAccountView());
                },
                textColor: ColorPicker.whiteColor,
                title: AppStrings.signIN,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    text: AppStrings.dontAccount,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: ColorPicker.subBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.offAll(const CreateAccountView());
                          },
                        text: AppStrings.createAccount,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12.sp,
                            color: ColorPicker.skyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 125.h,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    height: 2,
                    color: ColorPicker.offGreyColor,
                    endIndent: 3,
                    indent: 3,
                    thickness: 1,
                  ),
                ),
                Text(
                  AppStrings.signInWith,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: ColorPicker.boderBlackColor),
                ),
                const Expanded(
                  child: Divider(
                    height: 2,
                    color: ColorPicker.offGreyColor,
                    endIndent: 3,
                    indent: 3,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            buttonIconWidget(
              context: context,
              height: 48.h,
              width: double.infinity,
              iconColor: ColorPicker.whiteColor,
              onPressed: () {},
              iconData: Icons.apple,
              textColor: ColorPicker.whiteColor,
              title: AppStrings.signInWithApple,
              fontSize: 16.sp,
              bgColor: ColorPicker.blackColor,
              disableColor: ColorPicker.appButtonColor,
            ),
            SizedBox(
              height: 16.h,
            ),
            buttonImageWidget(
              context: context,
              height: 48.h,
              width: double.infinity,
              onPressed: () {},
              imageHeight: 22.h,
              imageWidth: 22.w,
              image: ImagePickerImage.googleIcon,
              textColor: ColorPicker.boderBlackColor,
              title: AppStrings.signInWithGoogle,
              fontSize: 14.sp,
              bgColor: ColorPicker.whiteColor,
              disableColor: ColorPicker.appButtonColor,
            ),
            SizedBox(height: 20.h,)
          ],
        ),
      ),
    );
  }
}
