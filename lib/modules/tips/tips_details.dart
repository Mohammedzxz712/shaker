import 'package:flutter/material.dart';
import 'package:heart_doctor/shared/component/constant.dart';

class TipsDetails extends StatelessWidget {
  static const String routeName = '/tips_details';
  const TipsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              margin: const EdgeInsets.all(16),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Color(0xffcf8c33),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    verticalSpace(20),
                    Text(
                      'Tip ${args['tips']}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: Color(0xffcf8c33),
                      indent: 40,
                      endIndent: 40,
                    ),
                    Text(
                      'Stay active: Aim for at least 150 minutes of moderate-intensityaerobic exercise or 75 minutesof vigorous-intensity aerobicexercise per week,along with muscle-strengtheningactivities on two or more daysper week.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    verticalSpace(30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
