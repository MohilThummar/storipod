import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/app/modules/navbarScreen/views/navbar_screen_view.dart';

import '../../../constant/string.dart';
import '../controllers/explore_controller.dart';

class ExploreView extends GetView<ExploreController> {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ExploreController());
    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSearch(context: context, onTaped: () {}),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.topStories,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 200.h,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  itemCount: controller.storiesData.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160.w,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: controller.storiesData[index]
                                ["color"],
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                controller.storiesData[index]["imgText"],
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: ColorPicker.whiteColor),
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
                                fontSize: 13.sp,
                                color: ColorPicker.blackColor),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13.sp,
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
              Container(
                height: 200.h,
                // color: Colors.amberAccent,
                child: ListView.builder(
                  itemCount: controller.storiesData.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160.w,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50.r,
                            backgroundColor: controller.storiesData[index]
                                ["color"],
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Text(
                                controller.storiesData[index]["imgText"],
                                textAlign: TextAlign.center,
                                maxLines: 5,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: ColorPicker.whiteColor),
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
                                fontSize: 13.sp,
                                color: ColorPicker.blackColor),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13.sp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.topFOLLOW,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: ColorPicker.blackColor),
                  ),
                  Text(
                    AppStrings.seeAll,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorPicker.blackColor),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 450.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of columns in the grid
                    mainAxisSpacing: 8, // Spacing between rows
                    crossAxisSpacing: 1, // Spacing between columns
                  ),
                  itemCount: controller
                      .storiesGrideData.length, // Number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
                    // Build and return the individual grid items
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              controller.storiesGrideData[index]["image"]),
                          radius: 40.r,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          controller.storiesGrideData[index]["username"],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13.sp,
                              color: ColorPicker.blackColor),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          controller.storiesGrideData[index]["subName"],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 13.sp,
                              color: ColorPicker.boderBlackColor),
                        ),
                      ],
                    );
                  },

                  //   Container(
                  //   color: Colors.blue,
                  //   // height: 400.h,
                  //   margin: EdgeInsets.all(3.0),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(3.0),
                  //     child: GridTile(
                  //       child: Column(
                  //         // mainAxisSize: MainAxisSize.max,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           CircleAvatar(
                  //             radius: 35,
                  //             backgroundColor:
                  //                 controller.storiesGrideData[index]["color"],
                  //           ),
                  //           SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             controller.storiesGrideData[index]["username"],
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.w700,
                  //                 fontSize: 13.sp,
                  //                 color: ColorPicker.blackColor),
                  //           ),
                  //           SizedBox(
                  //             height: 4.h,
                  //           ),
                  //           Text(
                  //             controller.storiesGrideData[index]["subName"],
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.w700,
                  //                 fontSize: 13.sp,
                  //                 color: ColorPicker.boderBlackColor),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavbarScreenView(),
    );
  }
}
