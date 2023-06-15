import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../../view/login/login_view.dart';
import '../../../view/recommendation/recommendation_view.dart';
import '../../common/app_button.dart';
import '../../constant/colour.dart';

import 'introduction_controller.dart';

class IntroductionScreen extends GetView<IntroductionController> {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/intro.png"), fit: BoxFit.fill),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.offAll( LoginView());
              },
              // onTap: () {
              //   Get.offAll(LoginView());
              // },
              child: Align(
                widthFactor: 9.5.sw,
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 12.h),
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            PageView.builder(
              controller: controller.pageController,
              onPageChanged: (int page) {
                controller.activePage.value = page;
              },
              itemCount: controller.pages.length,
              itemBuilder: (BuildContext context, int index) {
                return controller.pages[index % controller.pages.length];
              },
            ),
            Positioned(
              bottom: 220.h,
              left: 0,
              right: 0,
              height: 0.22.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  controller.pages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: GestureDetector(
                      onTap: () {
                        controller.pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        radius: 4.r,
                        backgroundColor: controller.activePage.value == index ? Colors.blueAccent : Colors.blueAccent.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8.h,
              left: 0,
              right: 0,
              height: 0.22.sh,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: ButtonWidget(
                    bgColor: ColorPicker.appButtonColor,
                    redius: 12.r,
                    textColor: ColorPicker.whiteColor,
                    onPressed: () {
                      Get.offAll( RecommendationView());
                    },
                    width: double.infinity,
                    fontSize: 16.sp,
                    height: 55.h,
                    title: "Get started",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PageOne() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(fontSize: 24.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}

PageTwo() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(fontSize: 24.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}

PageThree() {
  return Padding(
    padding: EdgeInsets.only(top: 0.36.sh),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's Shories Time !",
          style: TextStyle(fontSize: 24.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w800),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            "Tell Your Story",
            style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "Find New Ones",
          style: TextStyle(fontSize: 14.sp, color: ColorPicker.blackColor, fontWeight: FontWeight.w600),
        ),
      ],
    )),
  );
}
