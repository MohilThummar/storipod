import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';
import '../../introduction/views/introduction_view.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(milliseconds: 2000),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => IntroductionView())));
    return Scaffold(
      body: Container(
        height: 812.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePickerImage.onbordingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Image.asset(
          ImagePickerImage.onbordingName,
          width: 189.w,
          height: 74.h,
        )),
      ),
    );
  }
}
