import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../constant/colour.dart';
import '../../constant/string.dart';

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    File? image;
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
            onTap: () async {
              final _pickedFile =
              await ImagePicker().getImage(source: ImageSource.camera);
              Navigator.of(context).pop();
              image = _pickedFile == null ? null : File(_pickedFile.path);
            },
          ),
          ListTile(
            title: Text(
              AppStrings.picImage,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: ColorPicker.subBlackColor),
            ),
            onTap: () async {
              final _pickedFile =
              await ImagePicker().getImage(source: ImageSource.gallery);
              Navigator.of(context).pop();
              image = _pickedFile == null ? null : File(_pickedFile.path);
            },
          ),
          ListTile(
            title: Text(
              AppStrings.removeImage,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: ColorPicker.redColor),
            ),
            onTap: () {
              ///delete this image
            },
          ),
        ],
      ),
    );
  }
}
