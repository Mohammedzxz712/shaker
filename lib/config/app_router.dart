import 'package:flutter/material.dart';
import 'package:heart_doctor/layout/layout_screen.dart';
import 'package:heart_doctor/modules/check/check_screen.dart';
import 'package:heart_doctor/modules/home/home_screen.dart';
import 'package:heart_doctor/modules/login/login_screen.dart';
import 'package:heart_doctor/modules/on_boarding/on_boarding_screen.dart';
import 'package:heart_doctor/modules/profile/profile_screen.dart';
import 'package:heart_doctor/modules/sign_up/sign_up_screen.dart';
import 'package:heart_doctor/modules/tips/tips_details.dart';
import 'package:heart_doctor/modules/tips/tips_screen.dart';

import '../modules/result/result_screen.dart';
import 'router_path.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPath.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RouterPath.check:
        return MaterialPageRoute(builder: (_) => const CheckScreen());
      case RouterPath.tipsDetails:
        return MaterialPageRoute(builder: (_) => const TipsDetails());
      case RouterPath.tips:
        return MaterialPageRoute(builder: (_) => const TipsScreen());
      case RouterPath.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouterPath.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RouterPath.signUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case RouterPath.onboarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case RouterPath.layout:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case RouterPath.result:
        return MaterialPageRoute(builder: (_) => const ResultScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
