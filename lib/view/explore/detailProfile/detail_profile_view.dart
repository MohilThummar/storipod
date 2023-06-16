import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:status_view/status_view.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';
import 'package:storipod_app/view/explore/detailProfile/profilrbottonsheet.dart';
import 'package:storipod_app/view/personProfileScreen/person_profile_screen_view.dart';
import 'package:storipod_app/view/reactions/profileSetting/editProfile/edit_profile.screen.dart';
import 'detail_profile_controller.dart';

class DetailProfileView extends GetView<DetailProfileController> {
  const DetailProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: ColorPicker.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorPicker.whiteColor,
          actions: [
            GestureDetector(
              onTap: () {
                Get.bottomSheet(const ProfileBottomSheet(),
                    isDismissible: true, enableDrag: true);
              },
              child: Padding(
                  padding: EdgeInsets.only(
                    right: 24.w,
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    size: 24.sp,
                    color: ColorPicker.blackColor,
                  )),
            )
          ],
          leadingWidth: 0,
          elevation: 1,
          toolbarHeight: 62.h,
          title: Padding(
            padding: EdgeInsets.only(
              right: 12.w,
            ),
            child: Text(
              '@cojshka',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorPicker.blackColor),
            ),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Column(
                        children: [
                          Text(
                            "10.1k",
                            style: TextStyle(
                                color: ColorPicker.blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPicker.greySubColor),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const PersonProfileScreenView());
                      },
                      child: StatusView(
                        radius: 37.8.r,
                        spacing: 7.r,
                        strokeWidth: 3.w,
                        indexOfSeenStatus: 2,
                        numberOfStatus: 8,
                        padding: 4.w,
                        seenColor: ColorPicker.skyColor,
                        unSeenColor: ColorPicker.skyColor,
                        centerImageUrl: "https://picsum.photos/200/300",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.w),
                      child: Column(
                        children: [
                          Text(
                            "100",
                            style: TextStyle(
                                color: ColorPicker.blackColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPicker.greySubColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "GistLover",
                      style: TextStyle(
                          color: ColorPicker.blackColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 28.w,
                    ),
                    VerticalDivider(
                      indent: 4.w,
                      width: 2.w,
                      endIndent: 0,
                      color: ColorPicker.greySubColor,
                      thickness: 1.w,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Text(
                      "@counBorawn",
                      style: TextStyle(
                          color: ColorPicker.offGreyLightColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Journalist #web #GISTmystero #Software Aproko | #graphicdesigner #Artist 🇳🇬 | #fullgistLover",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorPicker.blackColor),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonWidget(
                        title: "Edit profile",
                        context: context,
                        onPressed: () {
                          Get.to(const EditProfileScreen());
                        },
                        fontSize: 14.sp,
                        height: 38.h,
                        width: 158.w,
                        bgColor: ColorPicker.pureWhiteColor,
                        redius: 8.r,
                        textColor: ColorPicker.blackColor),
                    Obx(() {
                      return buttonWidget(
                          context: context,
                          // title: "UnFollow",
                          title: controller.clicked.value
                              ? "Follow Back"
                              : "UnFollow",
                          // context: context,
                          onPressed: () {
                            controller.buttonUnfollow();
                          },
                          fontSize: 14.sp,
                          height: 38.h,
                          width: 158.w,
                          bgColor: controller.clicked.value
                              ? ColorPicker.appButtonColor
                              : ColorPicker.pureWhiteColor,
                          redius: 8.r,
                          textColor: controller.clicked.value
                              ? ColorPicker.whiteColor
                              : ColorPicker.blackColor);
                    }),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                color: ColorPicker.greWhiteColor,
                padding: EdgeInsets.only(top: 16.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stories",
                      style: TextStyle(
                          color: ColorPicker.blackColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      padding: EdgeInsets.only(top: 16.h),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 128.h,
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 25),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StatusView(
                                radius: 48.r,
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
                                                backgroundColor: ColorPicker
                                                    .yellowColor
                                                    .withOpacity(0.4),
                                                child: Image.asset(
                                                    height: 12.h,
                                                    width: 12.w,
                                                    ImagePickerImage.laugh))),
                                        Positioned(
                                            left: 15,
                                            child: CircleAvatar(
                                                backgroundColor: ColorPicker
                                                    .redColor
                                                    .withOpacity(0.4),
                                                radius: 12.r,
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: ColorPicker.redColor,
                                                  size: 16.sp,
                                                ))),
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
