import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storipod_app/app/constant/colour.dart';
import 'package:storipod_app/app/constant/image.dart';

/// <<< Common TextField --------- >>>

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final Color? suffixIconColor;
  final Icon? suffixIconData1;

  final Color? hintColor;
  final Color? fillColor;
  final Color? desibleBoderColor;
  final Color? color;
  final Color? boderColor;
  final double? fontSize;
  final bool? enabled;
  final bool? isDense;
  final Function()? OnTapSuffix;
  final TextAlign? textAlign;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormat;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;
  final bool? isMaxLines;
  final int? maxLength;
  final int? minLines;
  final bool? Filled;
  final int? maxLines;
  final bool? isError;
  final bool? isHight;
  final bool? borderVisible;

  final Widget? suffix;
  final EdgeInsets? padding;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.Filled = true,
    this.hintText,
    this.color,
    this.fontSize,
    this.OnTapSuffix,
    this.suffixIconData1,
    this.boderColor,
    this.hintColor,
    this.enabled = true,
    this.isDense = true,
    this.textAlign = TextAlign.start,
    this.inputType = TextInputType.text,
    this.inputFormat,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization,
    this.onSubmit,
    this.onChange,
    this.suffixIconColor,
    this.fillColor,
    this.onTap,
    this.focusNode,
    this.isMaxLines = false,
    this.maxLength,
    this.minLines,
    this.desibleBoderColor,
    this.maxLines = 1,
    this.isError = false,
    this.isHight = true,
    this.borderVisible = true,
    this.suffix,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: ColorPicker.appButtonColor,
      cursorWidth: 2,
      keyboardType: inputType,
      enabled: enabled,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      onSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      textAlign: textAlign!,
      autocorrect: false,
      autofocus: false,
      focusNode: focusNode,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      maxLines: isMaxLines! ? null : maxLines,
      maxLength: maxLength,
      minLines: minLines,
      inputFormatters: inputFormat,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize ?? 16,
        color: color ?? Colors.black,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(onTap: OnTapSuffix, child: suffixIconData1),
        suffixIconColor: suffixIconColor,
        isDense: isDense,
        fillColor: fillColor ?? ColorPicker.lightWhiteColor,
        filled: Filled ?? true,
        focusColor: ColorPicker.appButtonColor,
        contentPadding: padding,
        hintText: hintText,
        counter: null,
        counterText: "",
        hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: fontSize ?? 12,
            color: hintColor ?? Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: ColorPicker.appButtonColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: desibleBoderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
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
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
      ),
    );
  }
}

class CustomTextRoundField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final Color? suffixIconColor;
  final Icon? suffixIconData1;

  final Color? hintColor;
  final Color? fillColor;
  final Color? desibleBoderColor;
  final Color? color;
  final Color? boderColor;
  final double? fontSize;
  final bool? enabled;
  final bool? isDense;
  final Function()? OnTapSuffix;
  final TextAlign? textAlign;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormat;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;
  final bool? isMaxLines;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final bool? isError;
  final bool? isHight;
  final bool? borderVisible;

  final Widget? suffix;
  final EdgeInsets? padding;

  const CustomTextRoundField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.hintText,
    this.color,
    this.fontSize,
    this.OnTapSuffix,
    this.suffixIconData1,
    this.boderColor,
    this.hintColor,
    this.enabled = true,
    this.isDense = true,
    this.textAlign = TextAlign.start,
    this.inputType = TextInputType.text,
    this.inputFormat,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization,
    this.onSubmit,
    this.onChange,
    this.suffixIconColor,
    this.fillColor,
    this.onTap,
    this.focusNode,
    this.isMaxLines = false,
    this.maxLength,
    this.minLines,
    this.desibleBoderColor,
    this.maxLines = 1,
    this.isError = false,
    this.isHight = true,
    this.borderVisible = true,
    this.suffix,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: ColorPicker.appButtonColor,
      cursorWidth: 2,
      keyboardType: inputType,
      enabled: enabled,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      onSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      textAlign: textAlign!,
      autocorrect: false,
      autofocus: false,
      focusNode: focusNode,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      maxLines: isMaxLines! ? null : maxLines,
      maxLength: maxLength,
      minLines: minLines,
      inputFormatters: inputFormat,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize ?? 16,
        color: color ?? Colors.black,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(onTap: OnTapSuffix, child: suffixIconData1),
        suffixIconColor: suffixIconColor,
        isDense: isDense,
        fillColor: fillColor ?? ColorPicker.lightWhiteColor,
        filled: true,
        contentPadding: padding,
        hintText: hintText,
        counter: null,
        counterText: "",
        focusColor: ColorPicker.appButtonColor,
        hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: fontSize ?? 12,
            color: hintColor ?? Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
                width: 1,
                color: desibleBoderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
      ),
    );
  }
}

class CustomPasswordTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final Color? suffixIconColor;
  final String? suffixIconData1;

  final Color? hintColor;
  final Color? fillColor;
  final Color? desibleBoderColor;
  final Color? color;
  final Color? boderColor;
  final double? fontSize;
  final bool? enabled;
  final bool? isDense;
  final Function()? OnTapSuffix;
  final TextAlign? textAlign;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormat;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChange;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;
  final bool? isMaxLines;
  final int? maxLength;
  final int? minLines;
  final bool? Filled;
  final int? maxLines;
  final bool? isError;
  final bool? isHight;
  final bool? borderVisible;

  final Widget? suffix;
  final EdgeInsets? padding;

  const CustomPasswordTextField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    this.Filled = true,
    this.hintText,
    this.color,
    this.fontSize,
    this.OnTapSuffix,
    this.suffixIconData1,
    this.boderColor,
    this.hintColor,
    this.enabled = true,
    this.isDense = true,
    this.textAlign = TextAlign.start,
    this.inputType = TextInputType.text,
    this.inputFormat,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization,
    this.onSubmit,
    this.onChange,
    this.suffixIconColor,
    this.fillColor,
    this.onTap,
    this.focusNode,
    this.isMaxLines = false,
    this.maxLength,
    this.minLines,
    this.desibleBoderColor,
    this.maxLines = 1,
    this.isError = false,
    this.isHight = true,
    this.borderVisible = true,
    this.suffix,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: ColorPicker.appButtonColor,
      cursorWidth: 2,
      keyboardType: inputType,
      enabled: enabled,
      obscureText: obscureText!,
      textInputAction: textInputAction,
      onSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      textAlign: textAlign!,
      autocorrect: false,
      autofocus: false,
      focusNode: focusNode,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      maxLines: isMaxLines! ? null : maxLines,
      maxLength: maxLength,
      minLines: minLines,
      inputFormatters: inputFormat,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize ?? 16,
        color: color ?? Colors.black,
      ),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
            onTap: OnTapSuffix,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: Image.asset(suffixIconData1!,
                  fit: BoxFit.contain,
                  height: 17.w,
                  width: 19.w,
                  color: ColorPicker.blackEyeColor),
            )),
        suffixIconColor: suffixIconColor,
        isDense: isDense,
        fillColor: fillColor ?? ColorPicker.lightWhiteColor,
        filled: Filled ?? true,
        focusColor: ColorPicker.appButtonColor,
        contentPadding: padding,
        hintText: hintText,
        counter: null,
        counterText: "",
        hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: fontSize ?? 12,
            color: hintColor ?? Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: ColorPicker.appButtonColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: BorderSide(
                width: 1,
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
                width: 1,
                color: desibleBoderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
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
                color: boderColor ??
                    Theme.of(context).primaryColor.withOpacity(0.4))),
      ),
    );
  }
}
