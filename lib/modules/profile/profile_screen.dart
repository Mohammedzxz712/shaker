import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heart_doctor/generated/assets.dart';
import 'package:heart_doctor/shared/style/colors/app_colors.dart';
import 'package:heart_doctor/widgets/app_text_bottom.dart';

import '../../shared/component/constant.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile_screen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(100),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(Assets.imagesShaker),
            ),
            Text(
              'Ahmed',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('ahmedShaker@example.com'),
            verticalSpace(20),
            AppTextButton(
                buttonText: 'Edit Profile',
                backgroundColor: ColorsManager.orange,
                buttonWidth: 233.w,
                buttonHeight: 40.h,
                verticalPadding: 0,
                textStyle: TextStyle(fontSize: 18, color: ColorsManager.white),
                onPressed: () {}),
            verticalSpace(20),
            Divider(
              thickness: 1.h,
              endIndent: 18.w,
              indent: 18.w,
              color: ColorsManager.gray,
            ),
            verticalSpace(30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(AssetImage(Assets.imagesDarkMode),
                          color: Color(0xffcf8c33)),
                      horizontalSpace(20),
                      Text('Theme')
                    ],
                  ),
                  verticalSpace(20),
                  Row(
                    children: [
                      ImageIcon(AssetImage(Assets.imagesInternet),
                          color: Color(0xffcf8c33)),
                      horizontalSpace(20),
                      Text('Language'),
                    ],
                  ),
                  verticalSpace(20),
                  Row(
                    children: [
                      ImageIcon(AssetImage(Assets.imagesHelp),
                          color: Color(0xffcf8c33)),
                      horizontalSpace(20),
                      Text('Help'),
                    ],
                  ),
                  verticalSpace(20),
                  Row(
                    children: [
                      ImageIcon(AssetImage(Assets.imagesLogout),
                          color: Color(0xffcf8c33)),
                      horizontalSpace(20),
                      Text('Sign Out'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
