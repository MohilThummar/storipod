import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/constant/string.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        // initialBinding: BaseBinding(),
        themeMode: ThemeMode.light, initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          fontFamily: "lato",
        ),
        // theme: AppTheme.lightTheme,
        // darkTheme: AppTheme.darkTheme,
      );
    },
  ));
}
