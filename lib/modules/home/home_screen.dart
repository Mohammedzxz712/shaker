import 'package:flutter/material.dart';
import 'package:heart_doctor/widgets/app_text_bottom.dart';

import '../../shared/component/constant.dart';
import '../../shared/style/colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.white,
        body: SingleChildScrollView(
          child: Column(children: [
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    "Hey,ahmed",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            verticalSpace(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart Rate",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "bpm 80",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          verticalSpace(40),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Normal",
                              style: TextStyle(
                                  fontSize: 15, color: ColorsManager.orange),
                            ),
                          ),
                          verticalSpace(30),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "7:13 PM",
                              style: TextStyle(
                                  fontSize: 15, color: ColorsManager.gray),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Heart Rate",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "bpm 80",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          verticalSpace(40),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Normal",
                              style: TextStyle(
                                  fontSize: 15, color: ColorsManager.orange),
                            ),
                          ),
                          verticalSpace(30),
                          const Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "7:13 PM",
                              style: TextStyle(
                                  fontSize: 15, color: ColorsManager.gray),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: AppTextButton(
                  buttonText: 'new check?',
                  backgroundColor: ColorsManager.orange,
                  textStyle:
                      TextStyle(fontSize: 18, color: ColorsManager.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/check_screen');
                  }),
            ),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Text(
                    "edit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.orange,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "MY ACTIVITIES",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        horizontalSpace(20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Heart Rate",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("2/2 measurements",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: ColorsManager.orange,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_forward_ios),
                        horizontalSpace(20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Heart Rate",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("2/2 measurements",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: ColorsManager.orange,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
