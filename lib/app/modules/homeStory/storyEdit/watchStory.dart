import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:storipod_app/app/constant/image.dart';

import '../../../constant/colour.dart';
import '../viewStory.dart';
import 'controllers/story_edit_controller.dart';

class WatchStoryView extends GetView<StoryEditController> {
  const WatchStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 376.w,
        decoration: const BoxDecoration(
            color: ColorPicker.bottelGreenColor,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImagePickerImage.sd5Image),
            )),
        child: Column(children: [
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: (){Get.back();},
                  child: CircleAvatar(
                      radius: 17.r,
                      backgroundColor: ColorPicker.whiteColor.withOpacity(0.2),
                      child: Icon(
                        Icons.close,
                        color: ColorPicker.whiteColor,
                        size: 22.sp,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(WatchStoryLiveView());
                  },
                  child: Container(
                      width: 60.w,
                      height: 38.h,
                      padding: EdgeInsets.symmetric(vertical: 9.h),
                      decoration: BoxDecoration(
                        color: ColorPicker.whiteColor,
                        borderRadius: BorderRadius.circular(30.0),
                        // border: Border.all(
                        //   color: ColorPicker.boderBlackColor.withOpacity(0.3),
                        //   width: 2.0,
                        // ),
                      ),
                      child: Center(
                          child: Text(
                        'Post'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: ColorPicker.blackColor),
                      ))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 162,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              onTap: () {
                Get.bottomSheet(WatchStorySheetView(),
                    isDismissible: true, elevation: 2);
              },
              child: Center(
                child: Text(
                  "Courtney Brown is here to give you the hottest gossip. Follow me through the next slides to get the full stories!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: ColorPicker.whiteColor),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class WatchStorySheetView extends GetView<StoryEditController> {
  const WatchStorySheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 237.h,
      alignment: Alignment.bottomCenter,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset(
                    ImagePickerImage.earthImage,
                    height: 27.h,
                    width: 27.w,
                    fit: BoxFit.fill,
                    color: ColorPicker.whiteColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Everyone can comment on this slide",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorPicker.whiteColor),
                  )
                ],
              ),
            ),
            Container(
              color: ColorPicker.whiteColor.withOpacity(0.3),
              alignment: Alignment.bottomCenter,
              child: Column(children: [
                SizedBox(
                  height: 26.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        ImagePickerImage.colorBoxImage,
                        height: 27.h,
                        width: 27.w,
                        fit: BoxFit.fill,
                        color: ColorPicker.whiteColor,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Color",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                            color: ColorPicker.whiteColor),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset(
                        ImagePickerImage.skinImage,
                        height: 27.h,
                        width: 27.w,
                        fit: BoxFit.fill,
                        color: ColorPicker.whiteColor,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Skin",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                            color: ColorPicker.whiteColor),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Image.asset(
                        ImagePickerImage.fontImage,
                        height: 27.h,
                        width: 27.w,
                        fit: BoxFit.fill,
                        color: ColorPicker.whiteColor,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Font",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                            color: ColorPicker.whiteColor),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: ColorPicker.whiteColor,
                        child: Icon(Icons.add,
                            color: ColorPicker.appButtonColor, size: 21.sp),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 81.h,
                ),
              ]),
            )
          ]),
    );
  }
}
