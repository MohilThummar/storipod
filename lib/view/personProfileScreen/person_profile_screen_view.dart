import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:status_view/status_view.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/view/personProfileScreen/saveTabScreen/save_tab_binding.dart';
import 'package:storipod_app/view/personProfileScreen/saveTabScreen/save_tab_screen.dart';
import 'package:storipod_app/view/personProfileScreen/storiesTabScreen/stories_tab_screen.screen.dart';

import 'draftTabScreen/draft_tab_screen.screen.dart';
import 'person_profile_screen_controller.dart';

class PersonProfileScreenView extends GetView<PersonProfileScreenController> {
  const PersonProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorPicker.whiteColor,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 24.w, top: 20.h),
              child: Icon(
                Icons.more_horiz,
                size: 24.sp,
                color: ColorPicker.blackColor,
              ))
        ],
        leadingWidth: 0,
        elevation: 1,
        toolbarHeight: 100.h,
        title: Padding(
          padding: EdgeInsets.only(right: 12.w, top: 20.h),
          child: Text(
            '@cojshka',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: ColorPicker.blackColor),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, right: 40.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatusView(
                radius: 37.8.r,
                spacing: 7.r,
                strokeWidth: 3.w,
                indexOfSeenStatus: 0,
                numberOfStatus: 1,
                padding: 4.w,
                seenColor: ColorPicker.redColor,
                unSeenColor: ColorPicker.redColor,
                centerImageUrl: "https://picsum.photos/200/300",
              ),
              SizedBox(
                width: 25.w,
              ),
              Column(
                children: [
                  Text(
                    "1,234",
                    style: TextStyle(color: ColorPicker.blackColor, fontWeight: FontWeight.w700, fontSize: 14.sp),
                  ),
                  Text(
                    "Stories",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorPicker.blackColor),
                  )
                ],
              ),
              SizedBox(
                width: 24.w,
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(UserFollowerView());
                },
                child: Column(
                  children: [
                    Text(
                      "5,634",
                      style: TextStyle(color: ColorPicker.blackColor, fontWeight: FontWeight.w700, fontSize: 14.sp),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorPicker.blackColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              GestureDetector(
                onTap: () {
                  // Get.to(UserFollowerView());
                },
                child: Column(
                  children: [
                    Text(
                      "9,202",
                      style: TextStyle(color: ColorPicker.blackColor, fontWeight: FontWeight.w700, fontSize: 14.sp),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorPicker.blackColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, right: 40.w),
          child: Text(
            "Username",
            style: TextStyle(color: ColorPicker.blackColor, fontWeight: FontWeight.w700, fontSize: 13.sp),
          ),
        ),
        SizedBox(
          height: 4.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, right: 20.w),
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
              style: TextStyle(color: ColorPicker.blackColor, fontWeight: FontWeight.w500, fontSize: 12.sp),
              children: <TextSpan>[
                TextSpan(
                  text: '#hashtag',
                  style: TextStyle(color: ColorPicker.linkColor, fontWeight: FontWeight.w400, fontSize: 12.sp),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, right: 20.w),
          child: Text(
            "Link goes here",
            style: TextStyle(color: ColorPicker.linkColor, fontWeight: FontWeight.w700, fontSize: 12.sp),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 17.w, right: 17.w),
          child: buttonWidget(context: context, fontSize: 14.sp, title: "Follow", onPressed: () {}, height: 38.h, width: double.infinity, textColor: ColorPicker.blackColor, bgColor: ColorPicker.pureWhiteColor, redius: 8.r),
        ),
        SizedBox(
          height: 13.h,
        ),
        TabBar(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          indicatorWeight: 2.h,
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: ColorPicker.greyColor,
          labelColor: Colors.black,
          unselectedLabelStyle: TextStyle(fontSize: 14.sp, color: const Color(0x0ff00000), fontWeight: FontWeight.w700),
          indicatorColor: ColorPicker.blackColor,
          labelStyle: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w700),
          onTap: (v) {
            if (v == controller.indexTab.value) {
              Get.to(const SaveTabScreenScreen(), binding: SaveTabBinding());
            }
          },
          tabs: [
            Tab(
              icon: ImageIcon(
                  const AssetImage(
                    ImagePickerImage.storiesTab,
                  ),
                  size: 27.sp),
              child: const Text(
                "Stories",
              ),
              // text: 'My Lead',
            ),
            Tab(
              icon: ImageIcon(
                  const AssetImage(
                    ImagePickerImage.draftTab,
                  ),
                  size: 27.sp),
              child: const Text(
                "Draft",
              ),
              // text: 'My Lead',
            ),
            Tab(
              text: "Saved",
              icon: ImageIcon(
                  const AssetImage(
                    ImagePickerImage.saveTab,
                  ),
                  size: 27.sp),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
              // viewportFraction:1,
              controller: controller.tabController,
              children: [const StoriesTabScreenScreen(), const DraftTabScreenScreen(), Container()]),
        )
      ]),
    );
  }
}
