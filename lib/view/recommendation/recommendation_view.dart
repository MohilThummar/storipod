import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/view/findnewstory/findnewstory_binding.dart';
import 'package:storipod_app/view/findnewstory/findnewstory_view.dart';
import 'package:storipod_app/view/login/login_binding.dart';
import 'package:storipod_app/view/login/login_view.dart';

import 'recommendation_controller.dart';

class RecommendationView extends GetView<RecommendationController> {
  const RecommendationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWithSkip(context: context,onTaped: (){
        Get.offAll(const LoginView(),binding: LoginBinding());

      }),
      body: commanPaddingWidget(
        child:  Column(
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
                          }
                        } else {
                          controller.selectedHobby!
                              .removeWhere((element) => element == hobby);
                        }
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 4),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
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
                child: buttonWidget(
                  redius: 12.r,
                  context: context,
                  height: 48.h,
                  width: double.infinity,
                  onPressed: () {
                    Get.to(const FindnewstoryView(),binding: FindnewstoryBinding());
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

    );
  }
}

// class RecommendationView extends GetView<RecommendationController> {
//   const RecommendationView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appbarWithSkip(
//         context: context,
//         onTaped: () {
//           Get.offAll(const LoginView());
//         },
//       ),
//       body: Padding(
//         padding: EdgeInsets.only(
//           left: 20.w,
//           right: 20.w,
//         ),
//         child: GetBuilder<RecommendationController>(
//           builder: (_) => Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 24.h,
//               ),
//               Text(
//                 AppStrings.whatKinfOf,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w800,
//                     fontSize: 24.sp,
//                     color: ColorPicker.blackColor),
//               ),
//               SizedBox(
//                 height: 4.h,
//               ),
//               Text(
//                 AppStrings.selectorMore,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontWeight: FontWeight.w800,
//                     fontSize: 15.sp,
//                     color: ColorPicker.boderBlackColor),
//               ),
//               SizedBox(
//                 height: 46.h,
//               ),
//               Expanded(
//                 child: Wrap(
//                   children: controller.hobbyList.map(
//                     (hobby) {
//                       bool isSelected = false;
//                       if (controller.selectedHobby!.contains(hobby)) {
//                         isSelected = true;
//                       }
//                       return GestureDetector(
//                         onTap: () {
//                           controller.update();
//                           if (!controller.selectedHobby!.contains(hobby)) {
//                             if (controller.selectedHobby!.length < 5) {
//                               controller.selectedHobby!.add(hobby);
//                             }
//                           } else {
//                             controller.selectedHobby!
//                                 .removeWhere((element) => element == hobby);
//                           }
//                         },
//                         child: Container(
//                             margin: const EdgeInsets.symmetric(
//                                 horizontal: 5, vertical: 4),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 5, horizontal: 12),
//                               decoration: BoxDecoration(
//                                 color: isSelected
//                                     ? ColorPicker.appButtonColor
//                                     : ColorPicker.lightWhiteColor
//                                         .withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(5.r),
//                                 border: Border.all(
//                                     color: ColorPicker.boderBlackColor
//                                         .withOpacity(0.1),
//                                     width: 2),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Text(
//                                   hobby,
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 15.sp,
//                                       color: isSelected
//                                           ? ColorPicker.whiteColor
//                                           : ColorPicker.greyColor),
//                                 ),
//                               ),
//                             )),
//                       );
//                     },
//                   ).toList(),
//                 ),
//               ),
//               SizedBox(
//                 height: 259.h,
//               ),
//               Center(
//                 child: buttonWidget(
//                   redius: 12.r,
//                   context: context,
//                   height: 48.h,
//                   width: double.infinity,
//                   onPressed: () {
//                     Get.to(const FindnewstoryView());
//                   },
//                   textColor: ColorPicker.whiteColor,
//                   title: AppStrings.done,
//                   fontSize: 16.sp,
//                   bgColor: ColorPicker.appButtonColor,
//                   disableColor: ColorPicker.appButtonColor,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
