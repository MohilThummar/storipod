import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/constant/string.dart';

import '../../../common/app_button.dart';
import '../../../common/app_dialog.dart';
import '../../../common/app_text_field.dart';
import '../../../common/appbar.dart';
import '../../../constant/colour.dart';
import '../../login/views/login_view.dart';
import '../controllers/forgotaccount_controller.dart';

class ForgotaccountView extends GetView<ForgotaccountController> {
  const ForgotaccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotaccountController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithBack(
          context: context,
          onTaped: () {
            Get.to(LoginView());
          }),
      body: Padding(
        padding: EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.restoreAccount,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                AppStrings.neverLose,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              SizedBox(
                height: 35.h,
              ),
              CustomTextField(
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor,
                isDense: true,
                suffixIconData1: Icon(null),
                boderColor: ColorPicker.boderBlackColor,
                controller: controller.emailIdController,
                hintText: AppStrings.emailAddress,
                onTap: () {},
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 36.h,
              ),
              ButtonWidget(redius: 10,
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        insetPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 16,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            // mainAxisSize: MainAxisSize.max,

                            children: [
                              CircleAvatar(
                                maxRadius: 24,
                                minRadius: 24,
                                backgroundColor:
                                    ColorPicker.greenColor.withOpacity(0.2),
                                child: CircleAvatar(
                                  backgroundColor:
                                      ColorPicker.greenColor.withOpacity(0.3),
                                  maxRadius: 20,
                                  child: Icon(
                                    Icons.done,
                                    size: 24,
                                    color: ColorPicker.greenColor,
                                  ),
                                  minRadius: 20,
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                AppStrings.passwordReser,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                    color: ColorPicker.blackColor),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                AppStrings.passwordDialogContain,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: ColorPicker.boderBlackColor),
                              ),
                              SizedBox(
                                height: 26.h,
                              ),
                              ButtonWidget(redius: 10,
                                  width: 335,
                                  height: 55,
                                  onPressed: () {},
                                  bgColor: ColorPicker.appButtonColor,
                                  context: context,
                                  fontSize: 16.sp,
                                  textColor: ColorPicker.whiteColor,
                                  title: AppStrings.goToEmail)
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
