import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:status_view/status_view.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/views/story_edit_view.dart';
import 'package:storipod_app/app/modules/navbarScreen/views/navbar_screen_view.dart';
import 'package:storipod_app/app/modules/homeStory/searchstory/views/searchstory_view.dart';

import '../controllers/home_story_controller.dart';

class HomeStoryView extends GetView<HomeStoryController> {
  const HomeStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeStoryController());

    return Scaffold(
      appBar: appbarWithNotification(
          onTaped: () {
            Get.to(SearchstoryView());
          },
          context: context),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
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
                    width: 15.w,
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
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPicker.boderBlackColor),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(StoryEditView());
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorPicker.sky2Color.withOpacity(0.2),
                      child: Image.asset(ImagePickerImage.editIcon),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Text(
                AppStrings.recent,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                    color: ColorPicker.blackColor),
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 16),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.storyList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
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
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.storyList[index]["name"],
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w800,
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
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lock,
                              color: ColorPicker.blueColor,
                              size: 22,
                            ),
                            SizedBox(
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
      ),
      bottomNavigationBar: NavbarScreenView(),
    );
  }
}
