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
    List<String> hobbyList = [
      " 😍 Romance",
      "Sci-fi",
      "Art",
      "Art",
      "Sports",
      "Art",
      "Movies",
      "Geography",
      "Trending News",
      "Art",
    ];

    List<String>? selectedHobby = [];
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
                height: 10.h,
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
                children: hobbyList.map(
                  (hobby) {
                    bool isSelected = false;
                    if (selectedHobby!.contains(hobby)) {
                      isSelected = true;
                    }
                    return GestureDetector(
                      onTap: () {
                        if (!selectedHobby!.contains(hobby)) {
                          if (selectedHobby!.length < 5) {
                            selectedHobby!.add(hobby);

                            print(selectedHobby);
                          }
                        } else {
                          selectedHobby!
                              .removeWhere((element) => element == hobby);
                          print(selectedHobby);
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
                              borderRadius: BorderRadius.circular(18),
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
                                    color:  ColorPicker.greyColor
                                        ),
                              ),
                            ),
                          )),
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
                  redius: 10,
                  context: context,
                  height: 55,
                  width: double.infinity,
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
