import 'package:doctors/core/helpers/extensions.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final TextStyle buttonStyle;
  final double? borderRadius;
  final double? horizentalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;

  const AppTextButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      required this.buttonStyle,
      this.borderRadius,
      this.horizentalPadding,
      this.verticalPadding,
      this.backgroundColor,
      this.buttonWidth,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? ColorsManger.mainBlue),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: horizentalPadding ?? 14.h,
                vertical: verticalPadding ?? 12.w),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 16.0), // Set the border radius
            ),
          ),
          fixedSize: MaterialStateProperty.all(
              Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h))),
      child: Text(buttonText, style: buttonStyle),
    );
  }
}
