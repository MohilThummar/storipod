import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:storipod_app/app/modules/homeStory/searchstory/controllers/searchstory_controller.dart';

import '../../../constant/colour.dart';
import '../../../constant/string.dart';

class SearchBottomSheet extends StatelessWidget {
  List<String> options = ['0', '1'];
  SearchstoryController controller = Get.put(SearchstoryController());
  @override
  Widget build(BuildContext context) {
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
                    padding:
                        EdgeInsets.only(left: 20.0.w, top: 10.h, bottom: 10.h),
                    child: Text(
                      AppStrings.selectBy,
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w, top: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.person,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: ColorPicker.subBlackColor),
                        ),
                        Obx(
                          () => Radio(
                              // fillColor: MaterialStateColor.resolveWith(
                              //         (states) => PicColor.themeBlueColor),
                              value: options[0],
                              groupValue: controller.maintain.value,
                              onChanged: (value) {
                                controller.maintain.value = value.toString();
                                print(value);
                              }),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.only(left: 20.0.w, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.intrested,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: ColorPicker.subBlackColor),
                          ),
                          Radio(
                              // fillColor: MaterialStateColor.resolveWith(
                              //         (states) => PicColor.themeBlueColor),
                              value: options[1],
                              groupValue: controller.maintain.value,
                              onChanged: (value) {
                                controller.maintain.value = value.toString();
                                print(value);
                              }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                ],
              )),
            ]));
  }
}
