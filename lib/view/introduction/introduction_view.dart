import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/routes/app_pages.dart';

import 'introduction_controller.dart';

class IntroductionScreen extends GetView<IntroductionController> {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/intro.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            textButton(
                title: "Skip",
                onPressed: () {
                  Get.offNamedUntil(Routes.logIn, (route) => false);
                }),
            SizedBox(height: 429.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                controller.pages.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: GestureDetector(
                    onTap: () {
                      controller.pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 4.r,
                      backgroundColor: controller.activePage.value == index
                          ? Colors.blueAccent
                          : Colors.blueAccent.withOpacity(0.4),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                allowImplicitScrolling: true,
                physics: AlwaysScrollableScrollPhysics(),
                pageSnapping: true,
                controller: controller.pageController,
                onPageChanged: (int page) {
                  controller.activePage.value = page;
                },
                itemCount: controller.pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return controller.pages[index % controller.pages.length];
                },
              ),
            ),
            SizedBox(height: 48.h),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: buttonWidget(
                  bgColor: ColorPicker.appButtonColor,
                  redius: 12.r,
                  textColor: ColorPicker.whiteColor,
                  onPressed: () {
                    Get.offNamedUntil(Routes.recommendation, (route) => false);
                  },
                  width: double.infinity,
                  fontSize: 16.sp,
                  height: 48.h,
                  title: "Get started",
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

pageOne() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(
              fontSize: 24.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(
                fontSize: 14.sp,
                color: ColorPicker.blackColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(
              fontSize: 14.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}

pageTwo() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(
              fontSize: 24.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(
                fontSize: 14.sp,
                color: ColorPicker.blackColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(
              fontSize: 14.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}

pageThree() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(
              fontSize: 24.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(
                fontSize: 14.sp,
                color: ColorPicker.blackColor,
                fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(
              fontSize: 14.sp,
              color: ColorPicker.blackColor,
              fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}
