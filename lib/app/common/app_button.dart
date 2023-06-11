import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colour.dart';

/// <<< Common App button --------- >>>

// class AppButton extends StatelessWidget {
//   final String? title;
//   final bool? disableButton;
//   final VoidCallback? onPressed;
//   final VoidCallback? onLongPress;
//   final double? height;
//   final double? width;
//   final Widget? child;
//   final IconData? icon;
//   final String? image;
//
//   const AppButton({
//     super.key,
//     this.title = "",
//     required this.onPressed,
//     this.onLongPress,
//     this.disableButton = false,
//     this.height,
//     this.width,
//     this.child,
//     this.icon,
//     this.image = "",
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: disableButton! ? null : onPressed,
//       onLongPress: disableButton! ? null : onLongPress,
//       style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
//             fixedSize: MaterialStatePropertyAll(
//                 Size(width ?? Get.width, height ?? 54)),
//           ),
//       child: child ??
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if (icon != null) ...[
//                 Icon(
//                   icon,
//                   color: Colors.white,
//                   size: 24,
//                 ),
//                 const SizedBox(width: 5),
//               ],
//               if (image!.isNotEmpty) ...[
//                 image!.contains(".svg")
//                     ? SvgPicture.asset(
//                         image!,
//                         height: 22,
//                       )
//                     : Image.asset(
//                         image!,
//                         height: 22,
//                       ),
//                 const SizedBox(width: 5)
//               ],
//               if (title!.isNotEmpty)
//                 Text(
//                   title!,
//                   textAlign: TextAlign.center,
//                 )
//             ],
//           ),
//     );
//   }
// }

Widget ButtonWidget(
    {BuildContext? context,
    Color? disableColor,
    Color? textColor,
    Function()? onPressed,
    Color? bgColor,
    double? redius,
    String? title,
    double? height,
    double? width,
    double? fontSize}) {
  return Container(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              onPrimary: ColorPicker.appButtonColor,
              primary: ColorPicker.appButtonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(redius!),
                // Define the border radius
              ),
              disabledBackgroundColor: disableColor,
              backgroundColor: bgColor),
          onPressed: onPressed,
          child: Text(
            title!,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: fontSize,
                color: textColor),
          )));
}

Widget ButtonImageWidget(
    {BuildContext? context,
    Color? disableColor,
    Color? textColor,
    Function()? onPressed,
    Color? bgColor,
    IconData? iconData,
    String? title,
    String? image,
    double? height,
    double? imageheight,
    double? imageWidth,
    double? width,
    double? fontSize}) {
  return Card(
    elevation: 5,
    child: Container(
        height: height,
        width: width,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // elevation: 30,
                disabledBackgroundColor: disableColor,
                backgroundColor: bgColor),
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image!,
                  height: imageheight,
                  width: imageWidth,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  title!,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: fontSize,
                      color: textColor),
                ),
              ],
            ))),
  );
}

Widget ButtonIconWidget(
    {BuildContext? context,
    Color? disableColor,
    Color? textColor,
    Color? iconColor,
    Function()? onPressed,
    Color? bgColor,
    IconData? iconData,
    String? title,
    double? height,
    double? width,
    double? fontSize}) {
  return Container(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 4,
              disabledBackgroundColor: disableColor,
              backgroundColor: bgColor),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData!,
                color: iconColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title!,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize,
                    color: textColor),
              ),
            ],
          )));
}
