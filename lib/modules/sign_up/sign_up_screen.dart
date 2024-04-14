import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/component/constant.dart';
import '../../shared/methods/pass_validate/pass_validate.dart';
import '../../shared/methods/validate_email/vaildate_email.dart';
import '../../shared/style/colors/app_colors.dart';
import '../../widgets/app_text_bottom.dart';
import '../../widgets/app_text_form_field.dart';
import '../../widgets/build_text_next_to_text_button.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();

  bool isObscureText = true;

  var passController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();

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
                    const Image(
                        image: AssetImage(
                            'assets/images/Forgot password-cuate.png')),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    verticalSpace(10),
                    AppTextFormField(
                      hintText: 'name',
                      keyboardType: TextInputType.name,
                      controller: nameController,
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
                    AppTextFormField(
                      hintText: 'phone',
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
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
                    verticalSpace(30),
                    AppTextButton(
                      buttonText: 'SIGN UP',
                      backgroundColor: Colors.orange,
                      buttonHeight: 44.h,
                      buttonWidth: 197.w,
                      textStyle: const TextStyle(
                        color: ColorsManager.white,
                      ),
                      onPressed: () {
                        // AuthCubit.get(context).userLogin(
                        //     email: emailController.text,
                        //     password: passController.text);
                      },
                    ),
                    customTextNextToTextButton(
                      context: context,
                      text: 'already have an account?',
                      textButton: 'Login',
                      onPressed: () {
                        Navigator.pushNamed(context, '/login_screen');
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
