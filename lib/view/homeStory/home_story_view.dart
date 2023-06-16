import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:status_view/status_view.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/view/homeStory/searchstory/searchstory_view.dart';
import 'package:storipod_app/view/homeStory/storyEdit/story_edit_view.dart';


import '../../../view/notification/notification_view.dart';
import 'home_story_controller.dart';

class HomeStoryView extends GetView<HomeStoryController> {
  const HomeStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: appbarWithNotification(
          onTapedNotificaton: () {
            Get.to(const NotificationView());
          },
          onTaped: () {
            Get.to(const SearchstoryView());
          },
          context: context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: Row(
                children: [
                  StatusView(
                    radius: 28.r,
                    spacing: 15.r,
                    strokeWidth: 3,
                    indexOfSeenStatus: 2,
                    numberOfStatus: 5,
                    padding: 4,
                    seenColor: Colors.grey,
                    unSeenColor: ColorPicker.greenColor,
                    centerImageUrl: "https://picsum.photos/200/300",
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.yourStory,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: ColorPicker.blackColor),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        AppStrings.yearAgo,
                        style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPicker.boderBlackColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(const StoryEditView());
                    },
                    child: CircleAvatar(
                      radius: 21.r,
                      backgroundColor: ColorPicker.sky2Color.withOpacity(0.2),
                      child: Image.asset(
                        ImagePickerImage.editIcon,
                        height: 16.h,
                        width: 18.w,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: ColorPicker.subGreyColor.withOpacity(0.3),
              height: 1,
              indent: 2,
              endIndent: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              child: Text(
                AppStrings.recent,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: ColorPicker.blackColor),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.storyList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 1.5.w),
                  child: Row(
                    children: [
                      StatusView(
                        radius: 30.r,
                        spacing: 15.r,
                        strokeWidth: 3,
                        indexOfSeenStatus: 2,
                        numberOfStatus: 5,
                        padding: 4,
                        seenColor: Colors.grey,
                        unSeenColor: ColorPicker.greenColor,
                        centerImageUrl: "https://picsum.photos/200/300",
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
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
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: ColorPicker.boderBlackColor),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            ImagePickerImage.lockImage,
                            width: 15.w,
                            height: 20.h,
                            color: ColorPicker.blueColor,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.storyList[index]["time"],
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPicker.boderBlackColor),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      // bottomNavigationBar: NavbarScreenView(),
    );
  }
}
