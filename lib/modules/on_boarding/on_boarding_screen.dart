import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heart_doctor/widgets/app_text_bottom.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String title;
  final String image;
  final String body;

  BoardingModel({required this.title, required this.body, required this.image});
}

class OnBoardingScreen extends StatefulWidget {
  static const routeName = '/on_boarding_screen';
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boardingModel = [
    BoardingModel(
      image: 'assets/images/16482628_5764322.jpg',
      body:
          'Welcome to our Heart Disease Prediction App!Get ready to take control of your heart health journey',
      title: 'heart doctor',
    ),
    BoardingModel(
      image: 'assets/images/25553239_79z_2203_w009_n001_124c_p6_124.jpg',
      body:
          'Get personalized insights into your heart health. Our app provides tailored recommendationsbased on your health data,helping you make informed decisionsto protect your heart',
      title: 'Personalized Insights',
    ),
    BoardingModel(
      image: 'assets/images/msg1365066522-3689.jpg',
      body:
          'Simplifying Heart Health MonitoringAn easy-to use app that enables seamless tracking of vital signs, symptoms,and lifestyle factors.',
      title: 'heart track',
    ),
  ];

  void submit() {
    Navigator.pushReplacementNamed(context, '/login_screen');
  }

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              submit();
            },
            child: const Text(
              'SKIP',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boardingModel[index]),
                itemCount: 3,
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boardingModel.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
            SmoothPageIndicator(
              controller: boardController,
              count: boardingModel.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.orange,
                dotColor: Colors.grey,
                dotHeight: 5,
                dotWidth: 10,
                expansionFactor: 3,
                spacing: 5,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppTextButton(
                buttonText: isLast ? 'Get Started' : 'Next',
                backgroundColor: Colors.orange,
                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                onPressed: () {
                  if (isLast) {
                    submit();
                  } else {
                    boardController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastEaseInToSlowEaseOut);
                  }
                })
          ],
        ),
      ),
    );
  }
}

Widget buildBoardingItem(BoardingModel model) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(
              model.image,
            ),
          ),
        ),
        Center(
          child: Text(
            model.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(
          thickness: 1.h,
          endIndent: 18,
          indent: 18,
          color: Colors.orange,
        ),
        Center(
          child: Text(
            model.body,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
