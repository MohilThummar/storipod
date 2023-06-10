import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:storipod_app/app/constant/colour.dart';

import '../../../constant/string.dart';
import 'controllers/story_edit_controller.dart';

class DiscardStoeyView extends GetView<StoryEditController> {
  const DiscardStoeyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            decoration: BoxDecoration(
              color: ColorPicker.blackEyeColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "If You go Back Now. your image edits will be discarded",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        color: ColorPicker.whiteColor),
                  ),
                ),
                Divider(
                  height: 1,
                  color: ColorPicker.greylightColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Discard",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: ColorPicker.redColor),
                  ),
                ),
                Divider(
                  height: 1,
                  color: ColorPicker.greylightColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Save draft",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: ColorPicker.whiteColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
              width:  double.infinity,
              padding: EdgeInsets.all(12),
              // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
              decoration: BoxDecoration(
                color: ColorPicker.blackEyeColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                'Cancle',
                textScaleFactor: 2,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: ColorPicker.whiteColor),
              )),
          SizedBox(
            height: 7.h,
          ),
        ],
      ),
    );
  }
}
