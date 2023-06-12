import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storipod_app/app/constant/string.dart';

import '../constant/colour.dart';
import '../constant/image.dart';

PreferredSizeWidget imageAppbarWidget({
  BuildContext? context,
}) {
  return AppBar(
    backgroundColor: ColorPicker.whiteColor,
    title: Padding(
      padding: EdgeInsets.only(bottom: 10.h, top: 35.h),
      child: Image.asset(
        ImagePickerImage.onbordingName,
        height: 30.h,
        width: 75.w,
      ),
    ),
    centerTitle: true,
    toolbarHeight: 70.h,
    elevation: 1,
  );
}

PreferredSizeWidget appbarWithBack({
  BuildContext? context,
  Function()? onTaped,
}) {
  return AppBar(
    backgroundColor: ColorPicker.whiteColor,
    title: Padding(
      padding: EdgeInsets.only(bottom: 10.h, top: 35.h),
      child: Image.asset(
        ImagePickerImage.onbordingName,
        height: 30.h,
        width: 75.w,
      ),
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: GestureDetector(
      onTap: onTaped,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h, top: 35.h),
        child: Icon(
          Icons.arrow_back_ios_new,
          color: ColorPicker.blackColor,
        ),
      ),
    ),
    toolbarHeight: 70.h,
    elevation: 1,
  );
}

PreferredSizeWidget appbarWithSkip({
  BuildContext? context,
  Function()? onTaped,
  bool icon = false,
}) {
  return AppBar(
    backgroundColor: ColorPicker.whiteColor,
    actions: [
      Center(
        child: GestureDetector(
          onTap: onTaped,
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
            child: icon == true
                ? Icon(
                    Icons.info_outline,
                    color: ColorPicker.boderBlackColor,
                  )
                : Text(
                    AppStrings.skip,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
          ),
        ),
      )
    ],
    title: Padding(
      padding: EdgeInsets.only(bottom: 10.h, top: 35.h),
      child: Image.asset(
        ImagePickerImage.onbordingName,
        height: 30.h,
        width: 75.w,
      ),
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    // leading: GestureDetector(
    //   onTap: onTaped,
    //   child: Icon(
    //     Icons.arrow_back,
    //     color: ColorPicker.blackColor,
    //   ),
    // ),
    toolbarHeight: 70.h,
    elevation: 1,
  );
}

PreferredSizeWidget appbarWithSearch({
  BuildContext? context,
  Function()? onTaped,
}) {
  return AppBar(
    backgroundColor: ColorPicker.whiteColor,

    actions: [
      Center(
        child: GestureDetector(
          onTap: onTaped,
          child: Padding(
              padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
              child: Image.asset(
                ImagePickerImage.SearchImage,
                height: 20.h,
                width: 20.w,
                color: ColorPicker.blackColor,
              )),
        ),
      )
    ],
    // titleSpacing:5.w,
    title: Padding(
      padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
      child: Image.asset(
        ImagePickerImage.onbordingName,
        height: 30.h,
        width: 75.w,
      ),
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,

    toolbarHeight: 62.h,
    elevation: 1,
  );
}

PreferredSizeWidget appbarWithNotification({
  BuildContext? context,
  Function()? onTaped,
  Function()? onTapedNotificaton,
}) {
  return AppBar(
    backgroundColor: ColorPicker.whiteColor,
    actions: [
      Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: onTapedNotificaton,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
                  child: Image.asset(
                    ImagePickerImage.notificationImage,
                    height: 20.h,
                    width: 20.w,
                    color: ColorPicker.blackColor,
                  )),
            ),
          ),
          Positioned(
              top: 25.h,
              left: 8.w,
              child: CircleAvatar(
                radius: 8.r,
                backgroundColor: ColorPicker.redColor,
                foregroundColor: ColorPicker.whiteColor,
                child: Text(
                  "3",
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
                ),
              ))
        ],
      ),
      Center(
        child: GestureDetector(
          onTap: onTaped,
          child: Padding(
              padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
              child: Image.asset(
                ImagePickerImage.SearchImage,
                height: 20.h,
                width: 20.w,
                color: ColorPicker.blackColor,
              )),
        ),
      )
    ],
    title: Padding(
      padding: EdgeInsets.only(bottom: 8.h, right: 20.w, top: 24.h),
      child: Image.asset(
        ImagePickerImage.onbordingName,
        height: 30.h,
        width: 75.w,
      ),
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,
    // leading: GestureDetector(
    //   onTap: onTaped,
    //   child: Icon(
    //     Icons.arrow_back,
    //     color: ColorPicker.blackColor,
    //   ),
    // ),
    toolbarHeight: 70.h,
    elevation: 1,
  );
}
