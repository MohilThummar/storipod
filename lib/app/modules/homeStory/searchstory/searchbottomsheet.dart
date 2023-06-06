import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constant/colour.dart';
import '../../../constant/string.dart';

class SearchBottomSheet extends StatelessWidget {
  List<String> options = ['0', '1'];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: ColorPicker.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
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
                      color: ColorPicker.offGreyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 7,
                    width: 50,
                  ),
                ],
              )),
              ListTile(
                title: Text(
                  AppStrings.selectBy,
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
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.person,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          color: ColorPicker.subBlackColor),
                    ),
                    Radio(
                      value: "1",
                      groupValue: options[0],
                      onChanged: (value) {
                        // _site = value;
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
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
                      value: "1",
                      groupValue: options[0],
                      onChanged: (value) {
                        // _site = value;
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Column(children: [
                  SizedBox(
                    height: 50.h,
                  ),
                ]),
              )
            ]));
  }
}
