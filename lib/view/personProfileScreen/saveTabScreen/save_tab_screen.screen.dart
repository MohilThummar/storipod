import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:status_view/status_view.dart';
import '../../../../app/constant/colour.dart';
import '../../../../app/constant/image.dart';
import '../../../../app/constant/string.dart';
import '../person_profile_screen_view.dart';
import 'save_tab_screen.controller.dart';

class SaveTabScreenScreen extends GetView<SaveTabScreenController> {
  const SaveTabScreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        controller.personProfileScreenController.tabController.index = 1;
        Get.off(PersonProfileScreenView());
        return true;
      },
      child: Scaffold(
        backgroundColor: ColorPicker.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorPicker.whiteColor,
          leading: GestureDetector(
            onTap: () {
              // controller.personProfileScreenController.indexTab.value = 1;
              controller.personProfileScreenController.tabController.index = 1;
              Get.off(PersonProfileScreenView());
            },
            child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 18.h, bottom: 16.h),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15.sp,
                  color: ColorPicker.blackColor,
                )),
          ),
          // leadingWidth: 0,
          elevation: 1,
          toolbarHeight: 62.h,
          title: Padding(
            padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
            child: Text(
              'Saved',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorPicker.blackColor),
            ),
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: 10,
          padding: EdgeInsets.only(top: 24.h, left: 10.w, right: 10.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 120.h,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  StatusView(
                    radius: 45.r,
                    spacing: 7.r,
                    strokeWidth: 3.w,
                    indexOfSeenStatus: 2,
                    numberOfStatus: 7,
                    padding: 4.w,
                    seenColor: ColorPicker.skyColor,
                    unSeenColor: ColorPicker.skyColor,
                    centerImageUrl: "https://picsum.photos/200/300",
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40.w,
                        child: Stack(
                          children: [
                            Positioned(
                                child: CircleAvatar(
                                    radius: 12.r,
                                    backgroundColor: ColorPicker.yellowColor
                                        .withOpacity(0.4),
                                    child: Image.asset(
                                        height: 12.h,
                                        width: 12.w,
                                        ImagePickerImage.laugh))),
                            Positioned(
                                left: 15,
                                child: CircleAvatar(
                                    backgroundColor:
                                        ColorPicker.redColor.withOpacity(0.4),
                                    radius: 12.r,
                                    child: Icon(
                                      Icons.favorite,
                                      color: ColorPicker.redColor,
                                      size: 16.sp,
                                    ))),
                          ],
                        ),
                      ),
                      Text(
                        "200",
                        style: TextStyle(
                            color: ColorPicker.blackColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
