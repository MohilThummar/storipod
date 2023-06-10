import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/searchkeyworkview.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/setbackgroundimage.dart';

import '../bottomsheet.dart';
import '../controllers/story_edit_controller.dart';

class StoryEditView extends GetView<StoryEditController> {
  const StoryEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    Get.put(StoryEditController());
    return Scaffold(
      backgroundColor: ColorPicker.blackColor,
      appBar: AppBar(
        toolbarHeight: 80.h,
        automaticallyImplyLeading: false,
        backgroundColor: ColorPicker.blackColor,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.bottomSheet(DiscardStoeyView(),
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                  elevation: 2);
            },
            child: CircleAvatar(
                backgroundColor: ColorPicker.boderBlackColor.withOpacity(0.3),
                radius: 25.r,
                child: Icon(
                  Icons.close,
                  color: ColorPicker.whiteColor,
                )),
          ),
        ),
        title: Container(
            width: 266.w,
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: ColorPicker.boderBlackColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: ColorPicker.boderBlackColor.withOpacity(0.3),
                width: 2.0,
              ),
            ),
            child: Center(
                child: Text(
              'Title'.toUpperCase(),
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorPicker.whiteColor),
            ))),
        centerTitle: true,
      ),
      body: commanPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(ImagePickerImage.tImage),
                    SizedBox(
                      width: 10.22.w,
                    ),
                    Image.asset(ImagePickerImage.aImage),
                    SizedBox(
                      width: 10.22.w,
                    ),
                    Image.asset(ImagePickerImage.colorImage),
                    SizedBox(
                      width: 10.22.w,
                    ),
                    Image.asset(ImagePickerImage.deleteImage),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SetBackGroundColorView());
                  },
                  child: Container(
                      width: 60.w,
                      height: 38.h,
                      padding: EdgeInsets.symmetric(vertical: 9.h),
                      decoration: BoxDecoration(
                        color: ColorPicker.boderBlackColor,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(
                          color: ColorPicker.boderBlackColor.withOpacity(0.3),
                          width: 2.0,
                        ),
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
            SizedBox(
              height: 201.h,
            ),
            Text(
              "Start a Storie",
              style: TextStyle(
                color: ColorPicker.lightGreenColor,
                fontSize: 32.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 260.h,
            ),
            Row(
              children: [
                Image.asset(ImagePickerImage.hastagImage),
                Container(
                  height: 40.h,
                  width: 290.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 8),
                    itemCount: controller.datStoryName.length,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                            color: isSelected == false
                                ? ColorPicker.boderBlackColor
                                : ColorPicker.blackColor,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color:
                                  ColorPicker.boderBlackColor.withOpacity(0.3),
                              width: 2.0,
                            ),
                          ),
                          child: Center(
                              child: Text(
                            controller.datStoryName[index].toUpperCase(),
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                              color: isSelected == true
                                  ? ColorPicker.boderBlackColor
                                  : ColorPicker.blackColor,
                            ),
                          )));
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21.h,
            ),
            Row(
              children: [
                Container(
                  height: 57,
                  width: 290.w,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: controller.colorBox.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 56.w,
                        width: 56.w,
                        color: controller.colorBox[index]["color"],
                        child: Center(
                          child: Text(
                            controller.colorBox[index]["name"],
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 7.sp,
                                color: controller.colorBox[index]["textColor"]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SearchKeyWordView());
                  },
                  child: CircleAvatar(
                    backgroundColor: ColorPicker.whiteColor,
                    radius: 24.r,
                    child: Icon(
                      Icons.add,
                      color: ColorPicker.sky2Color,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
