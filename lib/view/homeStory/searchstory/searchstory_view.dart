import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/searchfiled.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/modules/homeStory/searchstory/searchbottomsheet.dart';

import '../../../common/commanpaddingcolumn.dart';
import '../../../constant/image.dart';
import '../../../constant/string.dart';
import 'searchstory_controller.dart';

class SearchstoryView extends GetView<SearchstoryController> {
  const SearchstoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 80.h,
        backgroundColor: ColorPicker.whiteColor,
        titleSpacing: 0,

        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Icon(
              Icons.arrow_back_ios,
              size: 18.sp,
              color: ColorPicker.blackColor,
            ),
          ),
        ),
        leadingWidth: 25,
        automaticallyImplyLeading: true,
        title: searchfildWidget(
            suffixOnTap: () {
              Get.bottomSheet(
                  elevation: 3, enableDrag: true, SearchBottomSheet());
            },
            imageData: ImagePickerImage.filter1Icon,
            controller: controller.searchController,
            hintText: "Search for user",
            context: context,
            OnEditComplate: () {}),
        // centerTitle: true,
      ),
      body: commanPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorPicker.boderBlackColor.withOpacity(0.2),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                    color: ColorPicker.greylightColor.withOpacity(0.3),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Text(
                    AppStrings.person,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.blackColor),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor:  ColorPicker.greylightColor.withOpacity(0.3),
                  child: Icon(
                    color: ColorPicker.blackColor,
                    Icons.close,
                    size: 20.r,
                  ),
                )
              ],
            ),

            /// Recent text
            SizedBox(
              height: 24.h,
            ),
            Text(
              AppStrings.recent,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                  color: ColorPicker.blackColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            // SizedBox(
            //   height: 10.h,
            // ),
            // Row(
            //   children: [
            //     Container(
            //       decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         border: Border.all(
            //           color: ColorPicker.offGreyColor,
            //           width: 2.0,
            //         ),
            //       ),
            //       child: CircleAvatar(
            //           backgroundColor: ColorPicker.whiteColor,
            //           radius: 26.r,
            //           child: Image.asset(
            //             ImagePickerImage.SearchImage,
            //             height: 24.h,
            //             width: 24.w,
            //             fit: BoxFit.fill,
            //           )),
            //     ),
            //     SizedBox(
            //       width: 8.w,
            //     ),
            //     Text(
            //       "Courtney",
            //       style: TextStyle(
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.w700,
            //           color: ColorPicker.blackColor),
            //     ),
            //   ],
            // ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              // itemCount: 30,
              itemCount: controller.storyList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 26.r,
                          backgroundImage:
                              AssetImage(ImagePickerImage.profileIcon)
                          // AssetImage( controller.storyList[index]["image"]),
                          ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.storyList[index]["name"],
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: ColorPicker.blackColor),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            controller.storyList[index]["subName"],
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPicker.boderBlackColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
