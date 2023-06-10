import 'package:flutter/material.dart';

import '../constant/colour.dart';

Widget searchfildWidget(
    {BuildContext? context,
    Color? iconColorSuffix,
    String? imageData,
    String? hintText,
    Function()? OnEditComplate,
    Function()? suffixOnTap,
    TextEditingController? controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Container(
      height: 50,
      child: TextField(
        controller: controller,
        onEditingComplete: OnEditComplate,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: ColorPicker.greyColor),
            borderRadius: BorderRadius.circular(9.73),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: ColorPicker.greyColor),
            borderRadius: BorderRadius.circular(9.73),
          ),
          filled: true,
          fillColor: ColorPicker.whiteColor,
          prefixIcon: Icon(Icons.search, color: ColorPicker.boderBlackColor),
          hintText: hintText,
          suffixIcon: GestureDetector(
              onTap: suffixOnTap,
              child: Image.asset(
                imageData!,
                color: iconColorSuffix,
              )),
          hintStyle: TextStyle(
              color: ColorPicker.offGreyColor, fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
