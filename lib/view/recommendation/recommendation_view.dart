import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/app/routes/app_pages.dart';
import '../../app/common/app_button.dart';
import '../../app/constant/colour.dart';
import '../../app/modules/findnewstory/findnewstory_view.dart';
import 'recommendation_controller.dart';

class RecommendationView extends GetView<RecommendationController> {
  const RecommendationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWithSkip(context: context),
      body: commanPaddingWidget(
        child: GetBuilder<RecommendationController>(
          builder: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                AppStrings.whatKinfOf,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: ColorPicker.blackColor),
              ),
              SizedBox(
                height: 4.h,
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
                height: 46.h,
              ),

              Wrap(
                children: controller.hobbyList.map(
                  (hobby) {
                    bool isSelected = false;
                    if (controller.selectedHobby!.contains(hobby)) {
                      isSelected = true;
                    }
                    return GestureDetector(
                      onTap: () {
                        controller.update();
                        if (!controller.selectedHobby!.contains(hobby)) {
                          if (controller.selectedHobby!.length < 5) {
                            controller.selectedHobby!.add(hobby);

                            print(controller.selectedHobby);
                          }
                        } else {
                          controller.selectedHobby!
                              .removeWhere((element) => element == hobby);
                          print(controller.selectedHobby);
                        }
                      },
                      child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 12),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? ColorPicker.appButtonColor
                                  : ColorPicker.lightWhiteColor
                                      .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
                                  color: ColorPicker.boderBlackColor
                                      .withOpacity(0.1),
                                  width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                hobby,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.sp,
                                    color: isSelected
                                        ? ColorPicker.whiteColor
                                        : ColorPicker.greyColor),
                              ),
                            ),
                          )),
                    );
                  },
                ).toList(),
              ),

              // Spacer(),
              SizedBox(
                height: 259.h,
              ),
              Center(
                child: ButtonWidget(
                  redius: 10.r,
                  context: context,
                  height: 55.h,
                  width: double.infinity,
                  onPressed: () {
                    Get.to(Routes.FINDNEWSTORY);
                  },
                  textColor: ColorPicker.whiteColor,
                  title: AppStrings.done,
                  fontSize: 16.sp,
                  bgColor: ColorPicker.appButtonColor,
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