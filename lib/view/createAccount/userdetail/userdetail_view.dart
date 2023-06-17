import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/routes/app_pages.dart';

import '../../../app/common/app_button.dart';
import '../../../app/common/app_text_field.dart';
import '../../../app/common/appbar.dart';
import '../../../app/constant/colour.dart';
import '../../../app/constant/image.dart';
import '../../../app/constant/string.dart';
import '../secureaccount/secureaccount_view.dart';
import 'userdetail_controller.dart';

class UserdetailView extends GetView<UserdetailController> {
  const UserdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(
        context: context,
      ),
      body: commanPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              AppStrings.createAnAccount,
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
              AppStrings.storiesAudience,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: ColorPicker.subBlackColor),
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomTextField(
              padding: const EdgeInsets.all(16),
              fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
              boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
              isDense: true,
              suffixIconData1: const Icon(null),
              controller: controller.emailController,
              hintText: AppStrings.enterEmail,
              onTap: () {},
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    padding: const EdgeInsets.all(16),
                    fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                    isDense: true,
                    suffixIconData1: const Icon(null),
                    boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                    controller: controller.firstNameController,
                    hintText: AppStrings.firstName,
                    onTap: () {},
                    inputType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomTextField(
                    padding: const EdgeInsets.all(16),
                    fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                    isDense: true,
                    suffixIconData1: const Icon(null),
                    boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                    controller: controller.lastNameController,
                    hintText: AppStrings.lastName,
                    onTap: () {},
                    inputType: TextInputType.text,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomTextField(
              padding: const EdgeInsets.all(16),
              fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
              isDense: true,
              suffixIconData1: const Icon(null),
              boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
              controller: controller.phoneNumberController,
              hintText: AppStrings.phoneNumber,
              onTap: () {},
              inputType: TextInputType.phone,
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: buttonWidget(
                redius: 12.r,
                context: context,
                height: 48.h,
                width: double.infinity,
                onPressed: () {
                  Get.toNamed(Routes.secureAccount);
                },
                textColor: ColorPicker.whiteColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
            SizedBox(
              height: 120.h,
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
                  AppStrings.createWith,
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
              height: 40.h,
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
              height: 40.h,
              width: double.infinity,
              onPressed: () {},
              imageWidth: 22.w,
              imageHeight: 22.h,
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
    );
  }
}
