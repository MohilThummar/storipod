import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget commanPaddingWidget({
  BuildContext? context,
  Widget? child,
}) {
  return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, ),
      child: SingleChildScrollView(
        child: child,
      ));
}
