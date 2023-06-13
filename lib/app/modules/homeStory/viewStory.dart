import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storipod_app/app/common/app_text_field.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/controllers/story_edit_controller.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

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
                caption: "Still sampling",
                controller: controller.storyController,
              ),
              StoryItem.pageImage(
                  url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                  caption: "Working with gifs",
                  controller: controller.storyController),
              StoryItem.pageImage(
                url:
                    "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
                caption: "Hello, from the other side",
                controller: controller.storyController,
              ),
              StoryItem.inlineImage(
                url:
                    "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
                caption: Text("ascsd"),
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
            inline: true,
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
                      "My evergreen rounds",
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
                Icon(
                  Icons.more_horiz,
                  color: ColorPicker.whiteColor,
                  size: 24.sp,
                ),
              ],
            ),
          ),
          Positioned(
              top: 550.h,left: 20.w,
              child: Column(
                children: [
                  ListView.builder(shrinkWrap: true,
                    itemCount: 5,physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        height: 20,
                        color: ColorPicker.lightPinkColor,
                        child: Text("hsavgjfjhf"),
                      );
                    },
                  )
                ],
              ))
        ],
      ),
    );
  }
}
