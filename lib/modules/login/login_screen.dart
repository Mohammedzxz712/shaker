import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/component/constant.dart';
import '../../shared/methods/pass_validate/pass_validate.dart';
import '../../shared/methods/validate_email/vaildate_email.dart';
import '../../shared/style/colors/app_colors.dart';
import '../../widgets/app_text_bottom.dart';
import '../../widgets/app_text_form_field.dart';
import '../../widgets/build_rich_text.dart';
import '../../widgets/build_text_next_to_text_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  bool isObscureText = true;

  var passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: const AssetImage(
                            'assets/images/Mobile login-rafiki.png')),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      hintText: 'email',
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 15),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "should enter email";
                        } else if (!isEmailValid(value)) {
                          return 'email must contain @ & .com';
                        } else {
                          return null;
                        }
                      },
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      hintText: 'password',
                      controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      isObscureText: isObscureText,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 15),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "should enter password";
                        } else if (!isPasswordValid(value)) {
                          return 'Password must include: 0-9, A-Z, a-z, and special characters';
                        } else {
                          return null;
                        }
                      },
                    ),
                    verticalSpace(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: ColorsManager.orange,
                        ),
                      ),
                    ),
                    verticalSpace(30),
                    AppTextButton(
                      buttonText: 'LOGIN',
                      backgroundColor: Colors.orange,
                      buttonHeight: 44.h,
                      buttonWidth: 197.w,
                      textStyle: const TextStyle(
                        color: ColorsManager.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/layout_screen');
                      },
                    ),
                    customTextNextToTextButton(
                      context: context,
                      text: 'Create account?',
                      textButton: 'SignUp',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign_up_screen');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
