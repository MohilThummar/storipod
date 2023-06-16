import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:status_view/status_view.dart';

import '../../../../app/constant/colour.dart';

import 'draft_tab_screen.controller.dart';

class DraftTabScreenScreen extends GetView<DraftTabScreenController> {
  const DraftTabScreenScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 6,
      padding: EdgeInsets.only(top: 29.h, left: 15.w, right: 15.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 100.h,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: StatusView(
            radius: 48.r,
            spacing: 7.r,
            strokeWidth: 3.w,
            indexOfSeenStatus: 2,
            numberOfStatus: 7,
            padding: 4.w,
            seenColor: ColorPicker.skyColor,
            unSeenColor: ColorPicker.skyColor,
            centerImageUrl: "https://picsum.photos/200/300",
          ),
        );
      },
    );
  }
}
