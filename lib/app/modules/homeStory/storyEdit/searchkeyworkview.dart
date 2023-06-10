import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:flutter/material.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';

import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/string.dart';
import '../../../common/app_button.dart';
import 'bottomsheet.dart';
import 'controllers/story_edit_controller.dart';

class SearchKeyWordView extends GetView<StoryEditController> {
  const SearchKeyWordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.blackColor,
      appBar: AppBar(
        leadingWidth: 65.w,
        title: Text(
          "Back",
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorPicker.whiteColor),
        ),
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: ColorPicker.whiteColor,
            ),
          ),
        ),
        backgroundColor: ColorPicker.blackColor,
      ),
      body: commanPaddingWidget(
          child: GetBuilder<StoryEditController>(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              onTap: () {},
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                  hintText: "Enter KeyWord",
                  focusColor: Colors.white,
                  fillColor: Colors.grey,
                  disabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorPicker.whiteColor, width: 3),
                  ),
                  border: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorPicker.whiteColor, width: 3),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: ColorPicker.whiteColor, width: 3),
                  ),
                  //make hint text
                  hintStyle: TextStyle(
                    color: ColorPicker.whiteColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  helperStyle: TextStyle(
                    color: ColorPicker.whiteColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  //create lable
                  labelStyle: TextStyle(
                    color: ColorPicker.whiteColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  counterStyle: TextStyle(
                    color: ColorPicker.whiteColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  suffixIcon: GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                          radius: 20.r,
                          backgroundColor:
                              ColorPicker.lightWhiteColor.withOpacity(0.3),
                          child: Icon(
                            Icons.close,
                            color: ColorPicker.whiteColor,
                          )))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Selected  Hashtag",
              style: TextStyle(
                color: ColorPicker.whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "#Bangers #Beautiful #Sun #hronica ",
              style: TextStyle(
                color: ColorPicker.whiteColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 47.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular Hashtags",
                  style: TextStyle(
                    color: ColorPicker.whiteColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "5/30",
                  style: TextStyle(
                    color: ColorPicker.whiteColor.withOpacity(0.6),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 34.h,
            ),
            Wrap(
              children: controller.keyword.map(
                (hobby) {
                  bool isSelected = false;
                  if (controller.selectedKeyword!.contains(hobby)) {
                    isSelected = true;
                  }
                  return GestureDetector(
                    onTap: () {
                      controller.update();
                      if (!controller.selectedKeyword!.contains(hobby)) {
                        if (controller.selectedKeyword!.length < 5) {
                          controller.selectedKeyword!.add(hobby);

                          print(controller.selectedKeyword);
                        }
                      } else {
                        controller.selectedKeyword!
                            .removeWhere((element) => element == hobby);
                        print(controller.selectedKeyword);
                      }
                    },
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? ColorPicker.appButtonColor
                                : ColorPicker.lightWhiteColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                                color: ColorPicker.boderBlackColor
                                    .withOpacity(0.1),
                                width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              hobby,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: isSelected
                                      ? ColorPicker.whiteColor
                                      : ColorPicker.greyColor),
                            ),
                          ),
                        )),
                  );
                },
              ).toList(),
            ),
            // Center(
            //   child: Wrap(
            //     // list of length 3
            //     children: List.generate(
            //       controller.keyword.length,
            //       (int index) {
            //         // choice chip allow us to
            //         // set its properties.
            //         return Padding(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 8.0, vertical: 10),
            //           child: ChoiceChip(
            //             backgroundColor: ColorPicker.blackColor.withOpacity(0.6),
            //             onSelected: (value) {},
            //
            //             shape: RoundedRectangleBorder(
            //               side: BorderSide(
            //                 width: 1.0,
            //                 color: ColorPicker.boderBlackColor.withOpacity(0.1),
            //               ),
            //               borderRadius: BorderRadius.circular(20.0),
            //             ),
            //
            //             padding: EdgeInsets.all(4),
            //             labelStyle: TextStyle(
            //                 fontWeight: FontWeight.w700,
            //                 fontSize: 15.sp,
            //                 color: controller.value == index
            //                     ? ColorPicker.greyColor
            //                     : ColorPicker.whiteColor),
            //             labelPadding:
            //                 EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            //             label: Text(controller.keyword[index]),
            //             // color of selected chip
            //             selectedColor: ColorPicker.whiteColor.withOpacity(0.4),
            //             // selected chip value
            //             selected: controller.value == index,
            //             // onselected method
            //             // onSelected: (selected) {
            //             //   controller.value = selected ? index : null;
            //             //
            //             // },
            //           ),
            //         );
            //       },
            //     ).toList(),
            //   ),
            // ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                redius: 30,
                context: context,
                height: 55.h,
                width: double.infinity,
                onPressed: () {
                  // Get.to(FindnewstoryView());
                },
                textColor: ColorPicker.whiteColor,
                title: AppStrings.continueText,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
