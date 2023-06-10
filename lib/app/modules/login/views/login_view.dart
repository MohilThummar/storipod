import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/createAccount/views/create_account_view.dart';
import '../../../common/app_text_field.dart';
import '../../../constant/colour.dart';
import '../../../constant/string.dart';
import '../../explore/views/explore_view.dart';
import '../../forgotaccount/views/forgotaccount_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(context: context),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.welcome,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                AppStrings.backJames,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              SizedBox(
                height: 34.h,
              ),
              CustomTextField(
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                isDense: true,
                suffixIconData1: Icon(null),
                controller: controller.emailIdController,
                hintText: AppStrings.enterEmail,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 12.h,
              ),
              Obx(() {
                return CustomTextField(
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
                              Get.to(ForgotaccountView());
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
                child: ButtonWidget(
                  redius: 10.r,
                  context: context,
                  height: 0.055.sh,
                  width: double.infinity,
                  onPressed: () {
                    Get.to(CreateAccountView());
                  },
                  textColor: ColorPicker.blackColor,
                  title: AppStrings.signIN,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.offGreyColor,
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
                          recognizer: TapGestureRecognizer()..onTap = () {},
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
                  Expanded(
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
                  Expanded(
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
              ButtonIconWidget(
                context: context,
                height: 0.066.sh,
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
              ButtonImageWidget(
                context: context,
                height: 0.066.sh,
                width: double.infinity,
                onPressed: () {},
                image: ImagePickerImage.googleIcon,
                textColor: ColorPicker.boderBlackColor,
                title: AppStrings.signInWithGoogle,
                fontSize: 14.sp,
                bgColor: ColorPicker.whiteColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
