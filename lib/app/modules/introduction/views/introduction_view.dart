import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/modules/login/views/login_view.dart';
import 'package:storipod_app/app/modules/navbarScreen/views/navbar_screen_view.dart';
import '../../../common/app_button.dart';
import '../../../constant/colour.dart';

import '../../explore/views/explore_view.dart';
import '../../recommendation/views/recommendation_view.dart';
import '../controllers/introduction_controller.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  State<IntroductionView> createState() => IntroductionViewState();
}

class IntroductionViewState extends State<IntroductionView> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [PageOne(), PageTwo(), PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/intro.png"), fit: BoxFit.fill),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(LoginView());
              },
              // onTap: () {
              //   Get.offAll(LoginView());
              // },
              child: Align(
                  widthFactor: 9.5.sw,
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 18.0.w, vertical: 12.h),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
            PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
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
                    _pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn);
                              setState(() {
                                _activePage == _pages;
                              });
                            },
                            child: CircleAvatar(
                              radius: 4.r,
                              backgroundColor: _activePage == index
                                  ? Colors.blueAccent
                                  : Colors.blueAccent.withOpacity(0.4),
                            ),
                          ),
                        )),
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
                  // context: context,
                  redius: 12.r,
                  textColor: ColorPicker.whiteColor,
                  onPressed: () {
                    //Get.offAll(ExploreView());
                    Get.offAll(RecommendationView());
                    // Get.offAll(const NavbarScreenView());
                  },
                  width: double.infinity,
                  fontSize: 16.sp,
                  height: 55.h,
                  title: "Get started",
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

PageOne() {
  return Container(
    child: Padding(
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
            padding: EdgeInsets.symmetric(vertical: 8),
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
    ),
  );
}

PageTwo() {
  return Container(
    child: Padding(
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
            padding: EdgeInsets.symmetric(vertical: 8),
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
    ),
  );
}

PageThree() {
  return Container(
    child: Padding(
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
            padding: EdgeInsets.symmetric(vertical: 8),
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
    ),
  );
}
