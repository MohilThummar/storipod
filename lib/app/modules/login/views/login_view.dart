import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/createAccount/views/create_account_view.dart';
import 'package:storipod_app/app/modules/navbarScreen/views/navbar_screen_view.dart';
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
                fillColor: ColorPicker.lightWhiteColor,
                isDense: true,
                suffixIconData1: Icon(null),
                boderColor: ColorPicker.boderBlackColor,
                controller: controller.emailIdController,
                hintText: AppStrings.enterEmail,
                onTap: () {},
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                padding: EdgeInsets.all(16),
                suffixIconColor: ColorPicker.blackEyeColor,
                suffixIconData1: Icon(
                  Icons.remove_red_eye,
                ),
                desibleBoderColor: ColorPicker.offSkyColor,
                fillColor: ColorPicker.lightWhiteColor,
                isDense: true,
                boderColor: ColorPicker.boderBlackColor,
                controller: controller.passwordController,
                hintText: AppStrings.enterPassword,
                onTap: () {},
                obscureText: true,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 12.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(ForgotaccountView());
                },
                child: Row(
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
              ),
              SizedBox(
                height: 12.h,
              ),
              ButtonWidget(redius: 10,
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  Get.to(ExploreView());
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.signIN,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(CreateAccountView());
                },
                child: Row(
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
                height: 55,
                width: 335,
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
                height: 55,
                width: 335,
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
