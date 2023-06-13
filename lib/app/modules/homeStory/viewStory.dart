import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/controllers/story_edit_controller.dart';
import 'package:story_view/widgets/story_view.dart';

import '../../constant/string.dart';

class WatchStoryLiveView extends GetView<StoryEditController> {
  WatchStoryLiveView({Key? key}) : super(key: key);
  TextEditingController cmtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(StoryEditController());

    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.text(
                backgroundColor: ColorPicker.skyColor,
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32.sp,
                    color: ColorPicker.whiteColor),
                title:
                    "Courtney Brown is here to give you the hottest stories. Follow me through the next slides to get the full gist!",
              ),
              StoryItem.text(
                title: "Nice!\n\nTap to continue.",
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                  fontFamily: 'Dancing',
                  fontSize: 40,
                ),
              ),
              StoryItem.pageImage(
                url:
                    "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
                controller: controller.storyController,
              ),
            ],
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
            },
            progressPosition: ProgressPosition.top,
            repeat: true,
            indicatorColor: ColorPicker.whiteColor,
            inline: false,
            onVerticalSwipeComplete: (value) {},
            controller: controller.storyController,
          ),
          Positioned(
            top: 50.h,
            left: 20.w,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: ColorPicker.skyColor.withOpacity(0.3),
                    child: Icon(
                      Icons.arrow_back,
                      size: 15.sp,
                      color: ColorPicker.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.everyRound,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorPicker.whiteColor),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "by Courtney Brown",
                      style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorPicker.whiteColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.w,
                ),
                Icon(
                  Icons.play_arrow,
                  color: ColorPicker.whiteColor,
                  size: 24.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(CustomBottomSheet(),
                        elevation: 2, isDismissible: true, enableDrag: true);
                  },
                  child: Icon(
                    Icons.more_horiz,
                    color: ColorPicker.whiteColor,
                    size: 24.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 530.h,
              // height: 200.h,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      itemCount: controller.StoryViewer.length,
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.w, vertical: 10.h),
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 12.w),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 16.r,
                                backgroundImage: AssetImage(
                                    controller.StoryViewer[index]["image"]),
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
                                      controller.StoryViewer[index]["name"],
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          color: ColorPicker.whiteColor),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      controller.StoryViewer[index]["LName"],
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600,
                                          color: ColorPicker.whiteColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.h, right: 30.w),
                        child: CircleAvatar(
                            radius: 32.r,
                            backgroundColor: ColorPicker.whiteColor,
                            child: Icon(
                              Icons.pause,
                              color: ColorPicker.blackColor,
                            )),
                      )),
                ],
              )),
          Positioned(
            top: 738.h,
            bottom: 10.h,
            // height: 55.h,
            left: 20.w,
            right: 20.w,
            child: TextField(
              controller: controller.searchController,
              cursorColor: ColorPicker.appButtonColor,
              cursorWidth: 2,
              textInputAction: TextInputAction.done,
              autocorrect: false,
              autofocus: false,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Image.asset(ImagePickerImage.sendImage,
                        color: ColorPicker.whiteColor)),
                suffixIconColor: ColorPicker.whiteColor,
                fillColor: Colors.transparent,
                filled: true,
                focusColor: ColorPicker.appButtonColor,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
                hintText: "Add comment",
                counter: null,
                counterText: "",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide:
                        BorderSide(width: 1, color: ColorPicker.whiteColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide:
                        BorderSide(width: 1, color: ColorPicker.whiteColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide:
                        BorderSide(width: 1, color: ColorPicker.whiteColor)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide:
                        BorderSide(width: 1, color: ColorPicker.whiteColor)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1,
                    )),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide:
                        BorderSide(width: 1, color: ColorPicker.whiteColor)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorPicker.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  height: 5.h,
                  width: 43.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w, top: 10.h, bottom: 10.h),
                child: Text(
                  AppStrings.selectAction,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: ColorPicker.blackColor),
                ),
              ),
              Divider(
                color: ColorPicker.subgreyColor.withOpacity(0.3),
                height: 1,
                indent: 2,
                endIndent: 1,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, top: 16.h),
                  child: Text(
                    AppStrings.hidecmt,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.w,
                    top: 16.h,
                  ),
                  child: Text(
                    AppStrings.ExportAshare,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
                onTap: () {
                  Get.bottomSheet(ShareBottomSheet(),

                      elevation: 2, isDismissible: true, enableDrag: true);
                },
              ),
              GestureDetector(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.0.w, top: 16.h, bottom: 30.h),
                  child: Text(
                    AppStrings.Save,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
                onTap: () {
                  Get.back();
                },
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ShareBottomSheet extends StatelessWidget {
  List shareList = [
    {
      "image": ImagePickerImage.download,
      "name": "Save",
    },
    {
      "image": ImagePickerImage.link,
      "name": "Copy link",
    },
    {
      "image": ImagePickerImage.facebook,
      "name": "Facebook",
    },
    {
      "image": ImagePickerImage.instragram,
      "name": "Instagram",
    },
    {
      "image": ImagePickerImage.whatsapp,
      "name": "WhatsApp",
    },
    {
      "image": ImagePickerImage.linkedin,
      "name": "LinkedIn",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: ColorPicker.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  height: 5.h,
                  width: 43.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w, top: 10.h, bottom: 10.h),
                child: Text(
                  "Export and share",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: ColorPicker.blackColor),
                ),
              ),
              Divider(
                color: ColorPicker.subgreyColor.withOpacity(0.3),
                height: 1,
                indent: 2,
                endIndent: 1,
                thickness: 1,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0.w, top: 16.h),
                  child: Text(
                    "Share your thoughts to reach a more audience",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: ColorPicker.subBlackColor),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                  height: 75.h,
                  child: ListView.builder(
                    itemCount: shareList.length,
                    padding: EdgeInsets.only(left: 15.w),
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(onTap: (){  Get.back();},
                        child: Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundColor:
                                    ColorPicker.greyliColor.withOpacity(0.4),
                                child: CircleAvatar(
                                  backgroundColor: ColorPicker.whiteColor,
                                  radius: 24.r,
                                  child: Image.asset(
                                    shareList[index]["image"],
                                    height: 24.h,
                                    width: 24.w,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                shareList[index]["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: ColorPicker.greyliColor),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              SizedBox(
                height: 38.h,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
