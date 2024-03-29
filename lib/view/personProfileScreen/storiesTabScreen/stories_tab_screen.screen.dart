import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:status_view/status_view.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/routes/app_pages.dart';
import 'stories_tab_screen.controller.dart';

class StoriesTabScreenScreen extends GetView<StoriesTabScreenController> {
  const StoriesTabScreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.only(top: 29.h, left: 15.w, right: 15.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 120.h,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {

            Get.to(Routes.reactions);
          },
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
                  SizedBox(
                    width: 40.w,
                    child: Stack(
                      children: [
                        Positioned(
                            child: CircleAvatar(
                                radius: 12.r,
                                backgroundColor:
                                    ColorPicker.yellowColor.withOpacity(0.4),
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
                            ),
                          ),
                        ),
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
    );
  }
}
