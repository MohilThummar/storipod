import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../app/constant/colour.dart';
import '../../../app/constant/image.dart';
import '../../../app/constant/string.dart';
import 'create_account_controller.dart';

class CustomBottomSheet extends StatelessWidget {
  CreateAccountController controller = Get.put(CreateAccountController());

  @override
  Widget build(BuildContext context) {
    File? image;
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorPicker.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  height: 5.h,
                  width: 43.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w, top: 10.h, bottom: 10.h),
                child: Text(
                  AppStrings.selectImage,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: ColorPicker.blackColor),
                ),
              ),
              Divider(
                color: ColorPicker.subgreyColor.withOpacity(0.3),
                height: 1,
                indent: 2,
                endIndent: 1,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  controller.pickImageFromCamera();
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, top: 16.h),
                  child: Text(
                    AppStrings.takeImage,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    top: 16.h,
                  ),
                  child: Text(
                    AppStrings.picImage,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
                onTap: () {
                  controller.pickImageFromGallery();
                  Get.back();
                },
              ),
              GestureDetector(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0.w, top: 16.h, bottom: 30.h),
                  child: Text(
                    AppStrings.removeImage,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.redColor),
                  ),
                ),
                onTap: () {
                  controller.pickedImage == "";
                  Get.back();

                  ///delete this image
                },
              )
            ],
          )),
        ],
      ),
    );
  }
}
