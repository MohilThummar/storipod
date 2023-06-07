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
                CircleAvatar(
                    radius: 17.r,
                    backgroundColor: ColorPicker.whiteColor.withOpacity(0.2),
                    child: Icon(
                      Icons.close,
                      color: ColorPicker.whiteColor,
                      size: 22.sp,
                    )),
                GestureDetector(onTap: (){
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
                Get.bottomSheet(
                    BottomsheetImage(),
                    elevation: 2,
                    isDismissible: true);
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
      padding: EdgeInsets.all(10),
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
              "Choose a skin",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: ColorPicker.blackColor),
            ),
          ),
          Container(
            height: 225,
            child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 70,
                    // childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: controller.imageList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Center(
                    child: CircleAvatar(
                      radius: 40.r,
                      backgroundImage: AssetImage(
                        controller.imageList[index],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
