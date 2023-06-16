import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:storipod_app/app/constant/colour.dart';

import 'story_edit_controller.dart';

class DiscardStoeyView extends GetView<StoryEditController> {
  const DiscardStoeyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 12.h,
            ),
            margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: ColorPicker.blackEyeColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  child: Text(
                    "If You go Back Now. your image edits will be discarded",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: ColorPicker.whiteColor),
                  ),
                ),
                Divider(
                  height: 1,
                  color: ColorPicker.greylightColor.withOpacity(0.4),
                ),
                GestureDetector(
                  onTap: () {
                    Get.close(2);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Text(
                      "Discard",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: ColorPicker.redColor),
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  color: ColorPicker.greylightColor.withOpacity(0.4),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Save draft",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        color: ColorPicker.whiteColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 2.w,
                ),
                decoration: BoxDecoration(
                  color: ColorPicker.blackEyeColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  'Cancle',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: ColorPicker.whiteColor),
                )),
          ),
          SizedBox(
            height: 7.h,
          ),
        ],
      ),
    );
  }
}
