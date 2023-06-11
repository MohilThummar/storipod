import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/watchStory.dart';
import 'controllers/story_edit_controller.dart';

class SetBackGroundColorView extends GetView<StoryEditController> {
  const SetBackGroundColorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        color: ColorPicker.bottelGreenColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: CircleAvatar(
                      radius: 17.r,
                      backgroundColor: ColorPicker.whiteColor.withOpacity(0.2),
                      child: Icon(
                        Icons.close,
                        color: ColorPicker.whiteColor,
                        size: 22.sp,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(WatchStoryView());
                  },
                  child: Container(
                      width: 60.w,
                      height: 38.h,
                      padding: EdgeInsets.symmetric(vertical: 9.h),
                      decoration: BoxDecoration(
                        color: ColorPicker.whiteColor,
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
              height: 162,
            ),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(BottomsheetImage(),
                    elevation: 2, isDismissible: true);
              },
              child: Center(
                child: Text(
                  "Courtney Brown is here to give you the hottest gossip. Follow me through the next slides to get the full stories!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: ColorPicker.whiteColor),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class BottomsheetImage extends GetView<StoryEditController> {
  const BottomsheetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StoryEditController());
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
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
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "Choose a skin",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: ColorPicker.blackColor),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Divider(
                        color: ColorPicker.subgreyColor.withOpacity(0.3),
                        height: 1,
                        indent: 2,
                        endIndent: 1,
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        height: 225.h,
                        child: GridView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 70,
                                    // childAspectRatio: 3 / 4,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemCount: controller.imageList.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return Center(
                                child: CircleAvatar(
                                  radius: 30.r,
                                  backgroundImage: AssetImage(
                                    controller.imageList[index],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              )
            ]));
  }
}
