import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

import '../../constant/colour.dart';
import '../../constant/string.dart';
import 'controllers/create_account_controller.dart';

class CustomBottomSheet extends StatelessWidget {
  CreateAccountController controller = Get.put(CreateAccountController());
  @override
  Widget build(BuildContext context) {
    File? image;
    return Container(
      padding: EdgeInsets.only(left: 20.w, top: 24.h, right: 20.w),
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
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF1F1F1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                height: 5.h,
                width: 43.w,
              ),
            ],
          )),
          ListTile(
            title: Text(
              AppStrings.selectImage,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: ColorPicker.blackColor),
            ),
          ),
          const Divider(
            color: ColorPicker.offGreyColor,
            height: 1,
            indent: 2,
            endIndent: 1,
            thickness: 1,
          ),
          ListTile(
              title: Text(
                AppStrings.takeImage,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              onTap: () {
                controller.pickImageFromCamera();
                Get.back();
              }),
          ListTile(
              title: Text(
                AppStrings.picImage,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: ColorPicker.subBlackColor),
              ),
              onTap: () {
                controller.pickImageFromGallery();
                Get.back();
              }),
          ListTile(
            title: Text(
              AppStrings.removeImage,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: ColorPicker.redColor),
            ),
            onTap: () {
              controller.pickedImage == "";
              Get.back();

              ///delete this image
            },
          ),
        ],
      ),
    );
  }
}
