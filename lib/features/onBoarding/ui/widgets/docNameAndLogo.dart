import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class DocNameAndLogo extends StatelessWidget {
  const DocNameAndLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/doc_logo.svg'),
        SizedBox(width: 10.w),
        Text('DocDoc',style:TextStyles.font24Black700Wight,),


      ],
    );
  }
}
