import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/modules/createAccount/secureaccount/views/secureaccount_view.dart';
import '../../../../common/app_button.dart';
import '../../../../common/app_text_field.dart';
import '../../../../common/appbar.dart';
import '../../../../constant/colour.dart';
import '../../../../constant/image.dart';
import '../../../../constant/string.dart';
import '../controllers/userdetail_controller.dart';

class UserdetailView extends GetView<UserdetailController> {
  const UserdetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(UserdetailController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: imageAppbarWidget(
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.createAnAccount,
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
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                suffixIconData1: Icon(null),
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
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
                      padding: EdgeInsets.all(16),
                      fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                      isDense: true,
                      suffixIconData1: Icon(null),
                      boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                      controller: controller.firstNameController,
                      hintText: AppStrings.firstName,
                      onTap: () {},
                      inputType: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: CustomTextField(
                      padding: EdgeInsets.all(16),
                      fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                      isDense: true,
                      suffixIconData1: Icon(null),
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
                padding: EdgeInsets.all(16),
                fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                isDense: true,
                suffixIconData1: Icon(null),
                boderColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                controller: controller.phoneNumberController,
                hintText: AppStrings.phoneNumber,
                onTap: () {},
                inputType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidget(
                context: context,
                height: 55,
                width: 335,
                onPressed: () {
                  Get.to(SecureaccountView());
                },
                textColor: ColorPicker.blackColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.offGreyColor,
                disableColor: ColorPicker.appButtonColor,
              ),
              SizedBox(
                height: 120.h,
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
                    AppStrings.createWith,
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
                height: 40,
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
                height: 40,
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
