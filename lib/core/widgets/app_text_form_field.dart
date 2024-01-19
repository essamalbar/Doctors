import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? obsecure;
  final Widget? suffixIcon;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.obsecure,
    this.suffixIcon,
    required this.hintText,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        focusedBorder: focusBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1.3,
                  color: ColorsManger.mainBlue,
                ),
                borderRadius: BorderRadius.circular(16.0)),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1.3,
                  color: ColorsManger.lighterGray,
                ),
                borderRadius: BorderRadius.circular(16.0)),
        hintStyle: hintStyle ?? TextStyles.font13Gray300Wight,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManger.moreLightGray,
        filled: true,
      ),
      obscureText: obsecure ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
