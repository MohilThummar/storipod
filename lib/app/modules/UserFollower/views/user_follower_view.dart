import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../constant/colour.dart';
import '../../../constant/image.dart';
import '../controllers/user_follower_controller.dart';

class UserFollowerView extends StatefulWidget {
  const UserFollowerView({Key? key}) : super(key: key);

  @override
  State<UserFollowerView> createState() => _UserFollowerViewState();
}

class _UserFollowerViewState extends State<UserFollowerView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  UserFollowerController controller = Get.put(UserFollowerController());
  int indexTab = 2;

  @override
  void initState() {
    // TODO: implement initState
    tabController =
        TabController(length: 3, vsync: this, animationDuration: Duration.zero);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPicker.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorPicker.whiteColor,
          leading: GestureDetector(
            onTap: () {
              Get.back(canPop: true);
            },
            child: Padding(
                padding: EdgeInsets.only(left: 10.w, top: 28.h, bottom: 16.h),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15.sp,
                  color: ColorPicker.blackColor,
                )),
          ),
          // leadingWidth: 0,
          elevation: 1,
          toolbarHeight: 62.h,
          title: Padding(
            padding: EdgeInsets.only(top: 28.h, bottom: 16.h),
            child: Text(
              'Reactions',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorPicker.blackColor),
            ),
          ),

          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                physics: NeverScrollableScrollPhysics(),
                controller: tabController,
                indicatorWeight: 2.h,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: ColorPicker.blackColor,
                labelColor: ColorPicker.appButtonColor,
                unselectedLabelStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff00000),
                    fontWeight: FontWeight.w600),
                indicatorColor: ColorPicker.appButtonColor,
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 24.5.w,
                ),
                labelStyle: TextStyle(
                    // color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
                onTap: (v) {},
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                indicatorPadding: EdgeInsets.zero,
                tabs: [
                  Tab(
                    text: "sfkssdf",
                  ),
                  Tab(
                    text: "sfkssdf",
                  ),
                  Tab(
                    text: "sfkssdf",
                  ),
                ],
              ),
            ),
          ),

          centerTitle: true,
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            // AllviewTabScreen(),
            // LikeTabScreen(),
            // LaughTabScreen(),
          ],
        ));
  }
}
