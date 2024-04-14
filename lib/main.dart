import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heart_doctor/modules/login/login_screen.dart';

import 'layout/layout_screen.dart';
import 'modules/check/check_screen.dart';
import 'modules/home/home_screen.dart';
import 'modules/on_boarding/on_boarding_screen.dart';
import 'modules/profile/profile_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';
import 'modules/tips/tips_details.dart';
import 'modules/tips/tips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboarding_screen',
      routes: {
        '/login_screen': (context) => LoginScreen(),
        '/check_screen': (context) => const CheckScreen(),
        '/tips_details': (context) => const TipsDetails(),
        '/tips_screen': (context) => const TipsScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/profile_screen': (context) => const ProfileScreen(),
        '/sign_up_screen': (context) => SignUpScreen(),
        '/onboarding_screen': (context) => OnBoardingScreen(),
        '/layout_screen': (context) => const LayoutScreen(),
      },
    );
  }
}
