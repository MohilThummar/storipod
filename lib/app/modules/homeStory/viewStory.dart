import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:storipod_app/app/common/app_text_field.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/homeStory/storyEdit/controllers/story_edit_controller.dart';

class WatchStoryLiveView extends GetView<StoryEditController> {
  WatchStoryLiveView({Key? key}) : super(key: key);
  TextEditingController cmtController = TextEditingController();
  List abc = [
    {
      "image": ImagePickerImage.ddImage,
      "name": "Agberedo Jackson",
      "subName": "The curious incident of the dog in the"
    },
    {
      "image": ImagePickerImage.ggImage,
      "name": "Jamie Oliver",
      "subName":
          "We are happy you are back courtney, we wait for premium gist. go girllll!!!!"
    },
    {
      "image": ImagePickerImage.ddImage,
      "name": "Adegbeji Kayode",
      "subName": "The curious incident of the dog in the"
    },
    {
      "image": ImagePickerImage.bbImage,
      "name": "Agberedo Jackson",
      "subName": "The curious incident of the dog in the"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 812.h,
      width: 372.w,
      color: ColorPicker.sky2Color,
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Container(
                height: 5.h,
                child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: index == 0
                            ? ColorPicker.lightWhiteColor
                            : ColorPicker.boderBlackColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      width: 89.w,
                      height: 2.h,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorPicker.whiteColor.withOpacity(0.3),
                      radius: 20.r,
                      child: Icon(
                        Icons.arrow_back,
                        color: ColorPicker.whiteColor,
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
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: ColorPicker.whiteColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "by Courtney Brown",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: ColorPicker.whiteColor),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Icon(
                              Icons.lock,
                              color: ColorPicker.whiteColor,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.play_arrow_sharp,
                      color: ColorPicker.whiteColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: ColorPicker.whiteColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 54.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Text(
                    "Courtney Brown is here to give you the hottest stories. Follow me through the next slides to get the full gist!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.whiteColor),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 28.r,
                                    backgroundImage:
                                        AssetImage(abc[index]["image"]),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          abc[index]["name"],
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              color: ColorPicker.whiteColor),
                                        ),
                                        Text(
                                          abc[index]["subName"],
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: ColorPicker.whiteColor),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          shrinkWrap: true,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: abc.length,
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Spacer(),
                          CircleAvatar(
                            radius: 30.r,
                            backgroundColor: ColorPicker.whiteColor,
                            child: Icon(
                              Icons.pause,
                              color: ColorPicker.blackColor,
                              size: 28.h,
                            ),
                          )
                        ],
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextRoundField(
                  padding: EdgeInsets.all(16),
                  fillColor: Colors.transparent,
                  isDense: true,
                  hintColor: ColorPicker.whiteColor,
                  boderColor: ColorPicker.whiteColor,
                  controller: cmtController,
                  hintText: "Add comment",
                  onTap: () {},
                  // suffixIconData1: ,
                  inputType: TextInputType.emailAddress,
                ),
              ),
            ]),
      ),
    ));
  }
}
