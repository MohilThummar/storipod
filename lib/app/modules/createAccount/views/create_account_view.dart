import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/createAccount/username/views/username_view.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';

import '../../../common/app_button.dart';
import '../../../constant/colour.dart';
import '../../../constant/string.dart';
import '../bottomsheet.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSkip(context: context, onTaped: () {}),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.letGo,
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
                AppStrings.upLoadImage,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              SizedBox(
                height: 58.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                      elevation: 3, enableDrag: true, CustomBottomSheet());
                },
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorPicker.offSkyColor.withOpacity(0.3),
                  ),
                  child: Image.asset(ImagePickerImage.scanIcon),
                ),
              ),
              SizedBox(
                height: 266.h,
              ),
              ButtonWidget(
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  Get.to(UsernameView());
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(LoginView());
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
                        text: AppStrings.doYouHave,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: ColorPicker.subBlackColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: AppStrings.signIN,
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
            ],
          ),
        ),
      ),
    );
  }
}