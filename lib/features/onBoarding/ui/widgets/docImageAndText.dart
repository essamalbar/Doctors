import 'package:doctors/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/icons/doc_trans.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops:const[0.14,0.4],
            ),
          ),
          child:  Image.asset('assets/images/onBoarding_doctor.png'),

        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child:
        Text('Best Doctor Appointment App',
          style:TextStyles.font32BlueBold.copyWith(height: 1.4),
          textAlign: TextAlign.center,),)
      ],
    );
  }
}
