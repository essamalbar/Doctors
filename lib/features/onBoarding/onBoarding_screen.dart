
import 'package:doctors/core/theming/styles.dart';
import 'package:doctors/features/onBoarding/ui/widgets/docImageAndText.dart';
import 'package:doctors/features/onBoarding/ui/widgets/docNameAndLogo.dart';
import 'package:doctors/features/onBoarding/ui/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child:SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top:30.h,
                    bottom:30.h),
                child:  Column(
                   children: [
                     const  DocNameAndLogo(),
                     SizedBox(height: 30.h,),
                     const DoctorImageAndText(),
                     Padding(
                       padding:  EdgeInsets.all(10.h),
                       child: Column(
                         children: [
                           Text('Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                             style:TextStyles.font13Gray300Wight,
                           textAlign: TextAlign.center,
                           ),
                           SizedBox(height: 30.h,),
                           const GetStartedButton(),
                         ],
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
