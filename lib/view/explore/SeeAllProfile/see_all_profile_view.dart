import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';
import '../../../constant/colour.dart';
import '../detailProfile/detail_profile_view.dart';
import 'see_all_profile_controller.dart';

class SeeAllProfileView extends GetView<SeeAllProfileController> {
  const SeeAllProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPicker.whiteColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w, top: 10.h),
            child: Image.asset(
              ImagePickerImage.SearchImage,
              height: 21.h,
              width: 21.w,
            ),
          )
        ],
        elevation: 1,
        title: Padding(
          padding: EdgeInsets.only(right: 12.w, top: 10.h),
          child: Text(
            'Top contributors',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: ColorPicker.blackColor),
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        shrinkWrap: true,
        cacheExtent: 0.0,
        // scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 20.h, top: 24.h),
        physics: const AlwaysScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 24,
          // mainAxisExtent: 127.h,
          crossAxisSpacing: 0,
        ),
        itemCount: controller.storiesGrideData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.to(DetailProfileView());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage(controller.storiesGrideData[index]["image"]),
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
    );
  }
}
