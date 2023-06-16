import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storipod_app/app/constant/image.dart';

import '../constant/colour.dart';

Widget searchfildWidget(
    {BuildContext? context,
    Color? iconColorSuffix,
    String? imageData,
    String? hintText,
    Function()? onEditComplete,
    Function()? suffixOnTap,
    TextEditingController? controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: SizedBox(
      height: 55.h,
      child: TextField(
        controller: controller,
        onEditingComplete: onEditComplete,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.h),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2, color: ColorPicker.greyColor),
            borderRadius: BorderRadius.circular(4.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.2, color: ColorPicker.greyColor),
            borderRadius: BorderRadius.circular(4.r),
          ),
          filled: true,
          fillColor: ColorPicker.whiteColor,
          prefixIcon: ImageIcon(
              const AssetImage(
                ImagePickerImage.search1Icon,
              ),
              size: 14.sp),
          // prefixIcon: Image.asset(
          //   ImagePickerImage.SearchImage,
          //   height: 16.h,
          //   width: 16.w,
          //   fit: BoxFit.fill,
          //   // alignment: Alignment.center,
          //   color: ColorPicker.boderBlackColor,
          // ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: suffixOnTap,
            child: ImageIcon(AssetImage(imageData!), size: 12.sp),

            // Image.asset(
            //   width: 8.w,
            //   height: 8.h,
            //   imageData!,
            //   fit: BoxFit.fill,
            //   color: iconColorSuffix,
            // ),
          ),
          hintStyle: TextStyle(
              fontSize: 12.sp,
              color: ColorPicker.offgreGreen,
              fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
