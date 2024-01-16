import 'package:doctors/core/routing/app_router.dart';
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp ({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        theme: ThemeData(
        primaryColor: ColorsManger.mainBlue,
          scaffoldBackgroundColor: Colors.white
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}


