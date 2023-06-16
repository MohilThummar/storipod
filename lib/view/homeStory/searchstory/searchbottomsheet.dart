
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/view/homeStory/searchstory/searchstory_controller.dart';



class SearchBottomSheet extends StatelessWidget {


  SearchBottomSheet({super.key});

 final  List<String> options = ['0', '1'];
  final SearchstoryController controller = Get.put(SearchstoryController());
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 12.h,
        ),
        decoration: BoxDecoration(
          color: ColorPicker.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: [
              Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      height: 5.h,
                      width: 43.w,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0.w, top: 10.h, bottom: 10.h),
                    child: Text(
                      AppStrings.selectBy,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          color: ColorPicker.blackColor),
                    ),
                  ),
                  Divider(
                    color: ColorPicker.subGreyColor.withOpacity(0.3),
                    height: 1,
                    indent: 2,
                    endIndent: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w, top: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.person,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp,
                              color: ColorPicker.subBlackColor),
                        ),
                        Obx(
                          () => Radio(
                              // fillColor: MaterialStateColor.resolveWith(
                              //         (states) => PicColor.themeBlueColor),
                              value: options[0],
                              groupValue: controller.maintain.value,
                              onChanged: (value) {
                                controller.maintain.value = value.toString();
                                  }),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: EdgeInsets.only(left: 20.0.w, ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.interested,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: ColorPicker.subBlackColor),
                          ),
                          Radio(
                              // fillColor: MaterialStateColor.resolveWith(
                              //         (states) => PicColor.themeBlueColor),
                              value: options[1],
                              groupValue: controller.maintain.value,
                              onChanged: (value) {
                                controller.maintain.value = value.toString();

                              }),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                ],
              )),
            ]));
  }
}
