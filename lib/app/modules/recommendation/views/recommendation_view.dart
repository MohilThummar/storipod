import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/constant/string.dart';

import '../../../common/app_button.dart';
import '../../../constant/colour.dart';
import '../../findnewstory/views/findnewstory_view.dart';
import '../controllers/recommendation_controller.dart';

class RecommendationView extends GetView<RecommendationController> {
  const RecommendationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(RecommendationController());
    return Scaffold(
      appBar: appbarWithSkip(context: context),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                AppStrings.whatKinfOf,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ), SizedBox(
                height: 5.h,
              ),
              Text(
                AppStrings.selectorMore,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 15.sp,
                    color: ColorPicker.boderBlackColor),
              ),
              SizedBox(
                height: 23.h,
              ),
              Wrap(
                // list of length 3
                children: List.generate(
                  controller.choicechip.length,
                  (int index) {
                    // choice chip allow us to
                    // set its properties.
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ChoiceChip(
                        backgroundColor:
                            ColorPicker.lightWhiteColor.withOpacity(0.2),
                        onSelected: (value) {},

                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.0,
                            color: ColorPicker.boderBlackColor.withOpacity(0.1),
                          ),
                          borderRadius: BorderRadius.zero,
                        ),

                        padding: EdgeInsets.all(4),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: controller.value == index
                                ? ColorPicker.whiteColor
                                : ColorPicker.greyColor),
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        label: Text(controller.choicechip[index]["name"]),
                        // color of selected chip
                        selectedColor: ColorPicker.skyColor,
                        // selected chip value
                        selected: controller.value == index,
                        // onselected method
                        // onSelected: (selected) {
                        //   controller.value = selected ? index : null;
                        //
                        // },
                      ),
                    );
                  },
                ).toList(),
              ),
              // Spacer(),
              SizedBox(
                height: 300.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget(
                  context: context,
                  height: 55,
                  width: 335,
                  onPressed: () {
                    Get.to(FindnewstoryView());
                  },
                  textColor: ColorPicker.blackColor,
                  title: AppStrings.done,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.offGreyColor,
                  disableColor: ColorPicker.appButtonColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
