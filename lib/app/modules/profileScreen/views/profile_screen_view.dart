import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:storipod_app/app/constant/string.dart';

import '../../../constant/image.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SampleItem? selectedMenu;
    bool clicked = false;

    List Story = [
      ImagePickerImage.image1,
      ImagePickerImage.image2,
      ImagePickerImage.image3,
      ImagePickerImage.image4,
      ImagePickerImage.image5,
      ImagePickerImage.image5,
      ImagePickerImage.image6,
      ImagePickerImage.image7,
      ImagePickerImage.image1,
    ];
    Get.put(ProfileScreenController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("@courtBron",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w700),),
                //     PopupMenuButton<SampleItem>(
                //       initialValue: selectedMenu,
                //       // Callback that sets the selected popup menu item.
                //       onSelected: (SampleItem item) {
                //
                //           selectedMenu = item;
                //
                //       },
                //       itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                //         const PopupMenuItem<SampleItem>(
                //           value: SampleItem.itemOne,
                //           child: Text('Item 1'),
                //         ),
                //         const PopupMenuItem<SampleItem>(
                //           value: SampleItem.itemTwo,
                //           child: Text('Item 2'),
                //         ),
                //         const PopupMenuItem<SampleItem>(
                //           value: SampleItem.itemThree,
                //           child: Text('Item 3'),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 20.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Column(
                          children: [
                            Text(
                              "10.1k",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.sp),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      DottedBorder(
                        color: Colors.blueAccent,
                        borderType: BorderType.Circle,
                        radius: Radius.circular(52),
                        dashPattern: [35, 1],
                        strokeWidth: 3,
                        child: CircleAvatar(
                          radius: 52,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(ImagePickerImage.Profile),
                            radius: 48,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25.w),
                        child: Column(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16.sp),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "GistLover",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                      VerticalDivider(
                        width: 1,
                        thickness: 1.5,
                        color: Colors.grey,
                      ),
                      Text(
                        "@counBorawn",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
                  child: Text(
                    "journlist #web GISTmysterio #Software sproco |",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
                Text(
                  "#graphicdesigner #Artist 🇳🇬 | #fullgistLover",
                  style: TextStyle(fontSize: 12.sp),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: Row(
                    children: [
                      Container(
                        height: 38.h,
                        width: 158.w,
                        decoration: BoxDecoration(
                            color: Color(0xffEAEEF1),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Center(
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: GestureDetector(
                          onTap: () {
                            clicked = !clicked;
                          },
                          child: Container(
                            height: 38.h,
                            width: 158.w,
                            decoration: BoxDecoration(
                                color: clicked
                                    ? Color(0xff00A1C1)
                                    : Color(0xffEAEEF1),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Center(
                              child: clicked
                                  ? Text(
                                      "Follow Back",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700),
                                    )
                                  : Text(
                                      "UnFollow",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: Container(
                    color: Color(0xffF8F8F8),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 25.r,
                          mainAxisSpacing: 25.r),
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DottedBorder(
                              color: Colors.blueAccent,
                              borderType: BorderType.Circle,
                              radius: Radius.circular(52),
                              dashPattern: [35, 1],
                              strokeWidth: 3,
                              child: CircleAvatar(
                                radius: 42.r,
                                backgroundColor: Colors.transparent,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(Story[index]),
                                  radius: 40.r,
                                  child: Text(
                                    AppStrings.strytxt,
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImagePickerImage.laugh),
                                Image.asset(
                                  ImagePickerImage.heart,
                                  height: 12,
                                  fit: BoxFit.fill,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Text(
                                    "200",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///Reach Screen
// class Boxes extends StatelessWidget {
//   Boxes({this.child});
//
//   final Widget? child;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 250.h,
//       width: 300.w,
//       decoration: BoxDecoration(
//           border: Border.all(color: Color(0xffd9d9d9)),
//           color: Color(0xfff9f9f9),
//           borderRadius: BorderRadius.circular(10.w)),
//       child: child,
//     );
//   }
// }
// Scaffold(
// backgroundColor: Colors.white,
// appBar: AppBar(
// leading: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.arrow_back_ios_new,
// color: Colors.black,
// size: 20.sp,
// )),
// backgroundColor: Colors.white,
// elevation: 0,
// toolbarHeight: 60.h,
// centerTitle: true,
// titleSpacing: 20.r,
// title: Text(
// "Reach",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w700,
// color: Colors.black),
// ),
// ),
// body: SingleChildScrollView(
// child: Column(children: [
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 20.w),
// child: Container(
// color: Color(0xfff9f9f9),
// height: 45.h,
// child: TextField(
// showCursor: false,
// decoration: InputDecoration(
// suffixIcon: Icon(
// Icons.calendar_month,
// color: Colors.black,
// ),
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Color(0xffd9d9d9)),
// borderRadius: BorderRadius.circular(10.r)),
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Color(0xffd9d9d9)),
// borderRadius: BorderRadius.circular(10.r))),
// ),
// ),
// ),
// Padding(
// padding: EdgeInsets.symmetric(vertical: 21.h),
// child: Text(
// "123 Accounts Reached",
// style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w800),
// ),
// ),
// RichText(
// text: TextSpan(
// style: TextStyle(
// fontSize: 14.sp,
// color: Colors.black,
// ),
// children: [
// TextSpan(
// text: "You've Reached",
// style: TextStyle(color: Colors.grey)),
// TextSpan(
// text: ' +200% ',
// style: TextStyle(
// fontWeight: FontWeight.w600,
// fontSize: 14.sp,
// color: Color(0xff34A853))),
// TextSpan(
// text: "more Accounnts Beetween",
// style: TextStyle(color: Colors.grey))
// ],
// ),
// ),
// Text(
// "Jun 5 - Jun 14",
// style: TextStyle(color: Colors.grey),
// ),
// Padding(
// padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
// child: Align(
// alignment: Alignment.topLeft,
// child: Text(
// "Audience",
// style:
// TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
// )),
// ),
// Container(
// height: 240.h,
// child: ListView.builder(
// physics: AlwaysScrollableScrollPhysics(),
// scrollDirection: Axis.horizontal,
// itemCount: 1,
// itemBuilder: (context, int index) {
// return Row(
// children: [
// Padding(
// padding: EdgeInsets.only(left: 20.w),
// child: Boxes(
// child: Padding(
// padding: EdgeInsets.symmetric(horizontal: 15.w),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Padding(
// padding: EdgeInsets.symmetric(vertical: 10.h),
// child: Text(
// "Top cities",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w700,
// color: Colors.black),
// ),
// ),
// Row(
// children: [
// Text(
// "Lagos",
// style: TextStyle(color: Colors.grey),
// ),
// Text(
// "80%",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w600),
// )
// ],
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// ),
// LinearPercentIndicator(
// lineHeight: 8.0,
// percent: 0.8,
// barRadius: Radius.circular(10),
// progressColor: Color(0xff5F6DEF),
// animation: true,
// ),
// Row(
// children: [
// Text(
// "Abuja",
// style: TextStyle(color: Colors.grey),
// ),
// Text(
// "15%",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w600),
// )
// ],
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// ),
// LinearPercentIndicator(
// lineHeight: 8.0,
// percent: 0.15,
// progressColor: Color(0xff5F6DEF),
// animation: true,
// barRadius: Radius.circular(10),
// ),
// Row(
// children: [
// Text(
// "Banue",
// style: TextStyle(color: Colors.grey),
// ),
// Text(
// "2%",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w600),
// )
// ],
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// ),
// LinearPercentIndicator(
// lineHeight: 8.0,
// percent: 0.02,
// animation: true,
// barRadius: Radius.circular(10),
// progressColor: Color(0xff5F6DEF),
// ),
// Row(
// children: [
// Text(
// "Abia",
// style: TextStyle(color: Colors.grey),
// ),
// Text(
// "3%",
// style: TextStyle(
// fontSize: 14.sp,
// fontWeight: FontWeight.w600),
// )
// ],
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// ),
// LinearPercentIndicator(
// lineHeight: 8.0,
// barRadius: Radius.circular(10),
// percent: 0.03,
// animation: true,
// progressColor: Color(0xff5F6DEF),
// ),
// ],
// ),
// ),
// )),
// Padding(
// padding: EdgeInsets.only(left: 20.w), child: Boxes()),
// ],
// );
// },
// ),
// ),
// Align(
// alignment: Alignment.bottomLeft,
// widthFactor: 6.5,
// heightFactor: 2,
// child: Text(
// "Top Slide",
// style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
// )),
// GridView.builder(
// padding: EdgeInsets.only(left: 10.w, top: 10.h),
// shrinkWrap: true,
// itemCount: controller.imagess.length,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 3, crossAxisSpacing: 5),
// itemBuilder: (context, index) {
// return Column(
// children: [
// CircleAvatar(
// radius: 55.r,
// backgroundImage: AssetImage(controller.imagess[index]),
// child: Center(
// child: Text(
// AppStrings.strytxt,
// style: TextStyle(fontSize: 10.sp),
// ),
// )),
// Text(
// "10 k reach",
// style: TextStyle(
// fontSize: 14.sp,
// ),
// ),
// ],
// );
// },
// ),
// Padding(
// padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// "Profile activity",
// style:
// TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
// ),
// ImageIcon(AssetImage("assets/images/img.png"))
// ],
// ),
// ),
// Padding(
// padding: EdgeInsets.only(top: 7.h, left: 20.w, right: 20.w),
// child: Container(
// child: ListTile(
// trailing: Column(
// children: [
// Text(
// "132",
// style: TextStyle(fontWeight: FontWeight.w700),
// ),
// Text(
// "+238%",
// style: TextStyle(color: Colors.green),
// )
// ],
// ),
// leading: Text(
// "Profile visits",
// style:
// TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
// ),
// ),
// height: 55.h,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.r),
// color: Color(0xfff9f9f9)),
// ),
// ),
// ]),
// ),
// );
/// Profile Screen
