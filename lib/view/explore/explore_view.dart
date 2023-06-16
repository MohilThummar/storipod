import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/main.dart';
import 'package:storipod_app/view/explore/SeeAllProfile/see_all_profile_binding.dart';
import 'package:storipod_app/view/homeStory/home_story_binding.dart';
import 'package:storipod_app/view/homeStory/searchstory/searchstory_binding.dart';
import 'package:storipod_app/view/homeStory/storyEdit/watchStory.dart';
import '../../../view/homeStory/searchstory/searchstory_view.dart';
import '../../../view/homeStory/viewStory.dart';
import '../../app/constant/string.dart';
import 'SeeAllProfile/see_all_profile_view.dart';
import 'explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSearch(
          context: context,
          onTaped: () {
            Get.to(const SearchstoryView(),binding: SearchstoryBinding());
          }),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 24.h),
              child: Text(
                AppStrings.topStories,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: ColorPicker.blackColor),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 154.h,
              // color: Colors.amberAccent,
              child: ListView.builder(
                itemCount: controller.storiesData.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(WatchStoryLiveView(),binding: HomeStoryBinding());
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 10.w),
                      width: 134.w,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 45.r,
                              backgroundColor: controller.storiesData[index]
                                  ["color"],
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 10.h),
                                child: Text(
                                  controller.storiesData[index]["imgText"],
                                  textAlign: TextAlign.center,
                                  maxLines: 5,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.sp,
                                      color: ColorPicker.whiteColor),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            controller.storiesData[index]["username"],
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: ColorPicker.blackColor),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  controller.storiesData[index]["image"],
                                ),
                                radius: 8.r,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                controller.storiesData[index]["subName"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                    color: ColorPicker.boderBlackColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 154.h,
              // color: Colors.amberAccent,
              child: ListView.builder(
                itemCount: controller.storiesData.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(right: 10.w),
                    width: 134.w,
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 45.r,
                            backgroundColor: controller.storiesData[index]
                                ["color"],
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              child: Text(
                                controller.storiesData[index]["imgText"],
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8.sp,
                                    color: ColorPicker.whiteColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          controller.storiesData[index]["username"],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                controller.storiesData[index]["image"],
                              ),
                              radius: 8.r,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              controller.storiesData[index]["subName"],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: ColorPicker.boderBlackColor),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 32.h, right: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.topFOLLOW,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPicker.blackColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      // showProfile.value=true;
                      // // print("===object");
                      // // showNavBar.value=true;
                      // correntIndex.value=1;
                      Get.to(SeeAllProfileView(),binding: SeeAllProfileBinding());
                    },
                    child: Text(
                      AppStrings.seeAll,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: ColorPicker.blackColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 465.h,
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                cacheExtent: 0.0,
                // scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(bottom: 20.h),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  mainAxisSpacing: 24,
                  mainAxisExtent: 130.h,
                  crossAxisSpacing: 0, // Spacing between columns
                ),
                itemCount: controller.storiesGrideData.length,
                // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  // Build and return the individual grid items
                  return GestureDetector(
                    onTap: () {
                      showNavBar.value=true;
                      correntIndex.value=2;

                      // Get.to(DetailProfileView());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              controller.storiesGrideData[index]["image"]),
                          radius: 45.r,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          controller.storiesGrideData[index]["username"],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          controller.storiesGrideData[index]["subName"],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: ColorPicker.boderBlackColor),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: NavbarScreenView(),
    );
  }
}
