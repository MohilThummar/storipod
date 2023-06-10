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
    title: Image.asset(
      ImagePickerImage.onbordingName,
      height: 30.h,
      width: 75.w,
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
    title: Image.asset(
      ImagePickerImage.onbordingName,
      height: 30.h,
      width: 75.w,
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: InkWell(
      onTap: onTaped,
      child: Icon(
        Icons.arrow_back_ios_new,
        color: ColorPicker.blackColor,
      ),
    ),
    toolbarHeight: 70.h,
    elevation: 2,
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
        child: InkWell(
          onTap: onTaped,
          child: Padding(
            padding: const EdgeInsets.only(right: 18.0),
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
    title: Image.asset(
      ImagePickerImage.onbordingName,
      height: 30.h,
      width: 75.w,
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    // leading: InkWell(
    //   onTap: onTaped,
    //   child: Icon(
    //     Icons.arrow_back,
    //     color: ColorPicker.blackColor,
    //   ),
    // ),
    toolbarHeight: 70.h,
    elevation: 2,
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
        child: InkWell(
          onTap: onTaped,
          child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.search_rounded,
                size: 28,
                color: ColorPicker.blackColor,
              )),
        ),
      )
    ],
    title: Image.asset(
      ImagePickerImage.onbordingName,
      height: 30.h,
      width: 75.w,
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,
    // leading: InkWell(
    //   onTap: onTaped,
    //   child: Icon(
    //     Icons.arrow_back,
    //     color: ColorPicker.blackColor,
    //   ),
    // ),
    toolbarHeight: 70.h,
    elevation: 2,
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
      Center(
        child: InkWell(
          onTap: onTapedNotificaton,
          child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.notifications,
                size: 28,
                color: ColorPicker.blackColor,
              )),
        ),
      ),
      Center(
        child: InkWell(
          onTap: onTaped,
          child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.search_rounded,
                size: 28,
                color: ColorPicker.blackColor,
              )),
        ),
      )
    ],
    title: Image.asset(
      ImagePickerImage.onbordingName,
      height: 30.h,
      width: 75.w,
    ),
    centerTitle: false,
    automaticallyImplyLeading: false,
    // leading: InkWell(
    //   onTap: onTaped,
    //   child: Icon(
    //     Icons.arrow_back,
    //     color: ColorPicker.blackColor,
    //   ),
    // ),
    toolbarHeight: 70.h,
    elevation: 2,
  );
}
