
import 'package:doctors/core/routing/routes.dart';
import 'package:doctors/features/onBoarding/onBoarding_screen.dart';
import 'package:doctors/features/login/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{

   Route generateRoute(RouteSettings settings){
      switch (settings.name){
        case Routes.onBoardingScreen:
          return MaterialPageRoute(
              builder: (_) => const OnBoardingScreen(),
          );
        case Routes.loginScreen:
          return MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          );
        default :
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No Route Defined for ${settings.name}'),
              ),
            ),
          );
      }

}
 }



