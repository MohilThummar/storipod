import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/image.dart';

import 'onboarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePickerImage.onBoardingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            ImagePickerImage.onBoardingName,
            width: 189.w,
          ),
        ),
      ),
    );
  }
}
