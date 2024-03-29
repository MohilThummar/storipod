import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/app/routes/app_pages.dart';
import 'package:storipod_app/view/login/login_binding.dart';
import 'package:storipod_app/view/login/login_view.dart';
import 'bottomsheet.dart';
import 'create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSkip(
          context: context,
          onTaped: () {
            Get.to(const LoginView(), binding: LoginBinding());
          }),
      body: commanPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.h,
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
              height: 8.h,
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

            // CircleAvatar(
            //   radius: 60.r,
            //   child: (controller.pickedImage == null)
            //       ? Image.asset(ImagePickerImage.emojiImage)
            //       : ClipOval(
            //           child: Image.file(
            //             controller.pickedImage!,
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            // ),

            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                    isDismissible: true,
                    elevation: 3,
                    enableDrag: true,
                    CustomBottomSheet());
              },
              child: CircleAvatar(
                radius: 55.r,
                backgroundColor: ColorPicker.offSkyColor.withOpacity(0.3),
                child: Image.asset(
                  ImagePickerImage.scanIcon,
                  height: 36.h,
                  width: 36.w,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // SizedBox(
            //   height: 100.h,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CircleAvatar(
            //       radius: 60.r,
            //       backgroundImage: AssetImage(ImagePickerImage.profileIcon),
            //     ),
            //     Image.asset(ImagePickerImage.emojiImage)
            //   ],
            // ),
            // SizedBox(
            //   height: 100.h,
            // ),
            SizedBox(
              height: 266.h,
            ),

            Center(
              child: buttonWidget(
                redius: 12.r,
                context: context,
                height: 48.h,
                width: double.infinity,
                onPressed: () {
                  Get.toNamed(Routes.userName);
                },
                textColor: ColorPicker.whiteColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
            SizedBox(
              height: 30.h,
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
                    text: AppStrings.doYouHave,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: ColorPicker.subBlackColor),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.logIn);
                          },
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
          ],
        ),
      ),
    );
  }
}
