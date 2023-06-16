import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:searchfield/searchfield.dart';
import 'package:storipod_app/app/common/app_button.dart';
import 'package:storipod_app/app/common/appbar.dart';
import 'package:storipod_app/app/common/commanpaddingcolumn.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/string.dart';
import 'package:storipod_app/app/routes/app_pages.dart';
import 'package:storipod_app/view/createAccount/userdetail/userdetail_view.dart';
import 'package:storipod_app/view/login/login_view.dart';
import 'username_controller.dart';
import 'country.dart';

class UsernameView extends GetView<UsernameController> {
  const UsernameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final countries = data.map((e) => Country.fromMap(e)).toList();

    return Scaffold(
      backgroundColor: ColorPicker.whiteColor,
      appBar: appbarWithSkip(context: context, icon: true, onTaped: () {}),
      body: commanPaddingWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Text(
              AppStrings.chooseUserName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp,
                  color: ColorPicker.blackColor),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              AppStrings.preferredName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: ColorPicker.subBlackColor),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 55.h,
              child: SearchField<Country>(
                searchInputDecoration: InputDecoration(
                  fillColor: ColorPicker.lightWhiteColor.withOpacity(0.3),
                  filled: true,
                  focusColor: ColorPicker.appButtonColor,
                  contentPadding: const EdgeInsets.all(16),
                  hintText: AppStrings.enterUsername,
                  counter: null,
                  counterText: "",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorPicker.boderBlackColor.withOpacity(0.3),
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(
                          width: 1, color: ColorPicker.appButtonColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorPicker.boderBlackColor.withOpacity(0.3),
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                          width: 1,
                          color: ColorPicker.boderBlackColor.withOpacity(0.3))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 1,
                      )),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.r),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorPicker.boderBlackColor.withOpacity(0.3),
                      )),
                ),
                suggestions: countries
                    .map(
                      (e) => SearchFieldListItem<Country>(
                        e.name,
                        item: e,
                        // Use child to show Custom Widgets in the suggestions
                        // defaults to Text widget
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              // CircleAvatar(
                              //   backgroundImage: NetworkImage(e.flag),
                              // ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text(
                                e.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            Center(
              child: buttonWidget(
                redius: 12.r,
                context: context,
                height: 55.h,
                width: double.infinity,
                onPressed: () {
                  Get.toNamed(Routes.userDetail);
                },
                textColor: ColorPicker.whiteColor,
                title: AppStrings.proceed,
                fontSize: 16.sp,
                bgColor: ColorPicker.appButtonColor,
                disableColor: ColorPicker.appButtonColor,
              ),
            ),
            SizedBox(
              height: 355.h,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.logIn);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                      text: AppStrings.doYouHave,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: ColorPicker.subBlackColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: AppStrings.signIN,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12.sp,
                              color: ColorPicker.skyColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
