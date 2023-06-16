import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app/constant/colour.dart';
import '../../app/constant/image.dart';
import 'AllviewTab/allview_tab.screen.dart';
import 'laughTab/laugh_tab.screen.dart';
import 'likeTab/like_tab.screen.dart';
import 'reactions_controller.dart';

class ReactionsView extends GetView<ReactionsController> {
  const ReactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPicker.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorPicker.whiteColor,
          leading: GestureDetector(
            onTap: () {
              Get.back(canPop: true);
            },
            child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 28.h, bottom: 16.h),
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
            padding: EdgeInsets.only(top: 28.h, bottom: 16.h),
            child: Text(
              'Reactions',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorPicker.blackColor),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                indicatorWeight: 2.h,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: ColorPicker.blackColor,
                labelColor: ColorPicker.appButtonColor,
                unselectedLabelStyle: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0x0ff00000),
                    fontWeight: FontWeight.w600),
                indicatorColor: ColorPicker.appButtonColor,
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24.5.w,
                ),
                labelStyle: TextStyle(
                  // color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
                onTap: (v) {},
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                indicatorPadding: EdgeInsets.zero,
                tabs: [
                  const Tab(
                    child: Text(
                      "All",
                    ),
                    // text: 'My Lead',
                  ),
                  Tab(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:
                          ColorPicker.redColor.withOpacity(0.2),
                          radius: 12.r,
                          child: Icon(
                            Icons.favorite,
                            color: ColorPicker.redColor,
                            size: 14.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          "2",
                        ),
                      ],
                    ),
                    // text: 'My Lead',
                  ),
                  Tab(
                    child: Row(children: [
                      CircleAvatar(
                        radius: 12.r,
                        backgroundColor:
                        ColorPicker.yellowColor.withOpacity(0.4),
                        child: Image.asset(
                            height: 12.h, width: 12.w, ImagePickerImage.laugh),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        "3",
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),

          centerTitle: true,
        ),
        body: TabBarView(
          controller: controller.tabController,
          children: const [
            AllviewTabScreen(),
            LikeTabScreen(),
            LaughTabScreen(),
          ],
        ));
  }
}

