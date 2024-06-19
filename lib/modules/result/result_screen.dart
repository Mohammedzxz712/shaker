import 'package:flutter/material.dart';
import 'package:heart_doctor/generated/assets.dart';
import 'package:lottie/lottie.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<int, Map<String, String>> heartDiseaseTips = {
      1: {
        "tip": "Maintain a healthy weight.",
        "description":
            "Achieving and maintaining a healthy weight helps reduce the risk of heart disease and other health problems."
      },
      2: {
        "tip": "Exercise regularly.",
        "description":
            "Engaging in regular physical activity helps improve heart health, reduce stress, and maintain a healthy weight."
      },
      3: {
        "tip":
            "Eat a balanced diet rich in fruits, vegetables, and whole grains.",
        "description":
            "A diet high in fruits, vegetables, and whole grains provides essential nutrients that support heart health."
      },
      4: {
        "tip": "Limit intake of saturated fats, trans fats, and cholesterol.",
        "description":
            "Reducing these fats can help lower cholesterol levels and decrease the risk of heart disease."
      },
      5: {
        "tip": "Reduce salt (sodium) in your diet.",
        "description":
            "Lowering sodium intake can help control blood pressure, reducing the strain on your heart."
      },
      6: {
        "tip": "Avoid excessive alcohol consumption.",
        "description":
            "Moderate alcohol consumption, if any, as excessive drinking can lead to high blood pressure and heart failure."
      },
      7: {
        "tip": "Don't smoke and avoid secondhand smoke.",
        "description":
            "Smoking is a major risk factor for heart disease. Quitting smoking and avoiding secondhand smoke can significantly improve heart health."
      },
      8: {
        "tip": "Monitor your blood pressure regularly.",
        "description":
            "Keeping track of your blood pressure helps in early detection and management of hypertension, a key risk factor for heart disease."
      },
      9: {
        "tip": "Keep your cholesterol levels in check.",
        "description":
            "Regular cholesterol checks and managing levels through diet and medication can reduce the risk of heart disease."
      },
      10: {
        "tip": "Manage diabetes effectively if you have it.",
        "description":
            "Proper diabetes management is crucial to preventing heart disease and other complications."
      },
      11: {
        "tip": "Get regular health screenings and check-ups.",
        "description":
            "Routine health screenings help detect risk factors early and keep your heart health in check."
      },
      12: {
        "tip": "Reduce stress through relaxation techniques and activities.",
        "description":
            "Practicing relaxation techniques such as meditation, yoga, or deep breathing can reduce stress and benefit heart health."
      },
      13: {
        "tip": "Ensure adequate sleep (7-8 hours per night).",
        "description":
            "Good quality sleep is essential for overall health, including heart health. Poor sleep can increase the risk of heart disease."
      },
      14: {
        "tip": "Stay hydrated by drinking plenty of water.",
        "description":
            "Staying well-hydrated helps maintain proper blood volume and cardiovascular function."
      },
      15: {
        "tip": "Limit added sugars in your diet.",
        "description":
            "Reducing added sugars can help prevent obesity, diabetes, and heart disease."
      },
      16: {
        "tip": "Eat fish high in omega-3 fatty acids.",
        "description":
            "Omega-3 fatty acids found in fish like salmon and mackerel can reduce inflammation and lower the risk of heart disease."
      },
      17: {
        "tip": "Include nuts and seeds in your diet.",
        "description":
            "Nuts and seeds are rich in healthy fats, fiber, and protein, which can improve heart health."
      },
      18: {
        "tip": "Choose healthy cooking oils like olive oil.",
        "description":
            "Healthy oils can help reduce bad cholesterol levels and improve heart health."
      },
      19: {
        "tip": "Stay active throughout the day.",
        "description":
            "Incorporate physical activity into your daily routine to keep your heart healthy and improve overall fitness."
      },
      20: {
        "tip": "Avoid processed and fast foods.",
        "description":
            "Processed and fast foods are often high in unhealthy fats, sodium, and sugars, which can increase the risk of heart disease."
      },
      21: {
        "tip": "Manage stress levels effectively.",
        "description":
            "Chronic stress can contribute to heart disease. Finding healthy ways to manage stress is important for heart health."
      },
      22: {
        "tip": "Monitor your blood sugar levels.",
        "description":
            "Keeping blood sugar levels in check can prevent diabetes and reduce the risk of heart disease."
      },
      23: {
        "tip": "Maintain a healthy social life.",
        "description":
            "Social connections and a supportive network can reduce stress and improve overall well-being, benefiting heart health."
      },
      24: {
        "tip": "Limit red meat consumption.",
        "description":
            "Eating less red meat can help reduce saturated fat intake and lower the risk of heart disease."
      },
      25: {
        "tip": "Consume low-fat or fat-free dairy products.",
        "description":
            "Choosing low-fat or fat-free dairy options can help reduce saturated fat intake and improve heart health."
      },
      26: {
        "tip": "Use herbs and spices instead of salt.",
        "description":
            "Flavoring foods with herbs and spices instead of salt can help lower sodium intake and benefit heart health."
      },
      27: {
        "tip": "Take breaks to move during long periods of sitting.",
        "description":
            "Regular movement and breaks from sitting can help improve circulation and reduce the risk of heart disease."
      },
      28: {
        "tip": "Avoid sugary drinks.",
        "description":
            "Sugary drinks can contribute to weight gain and increase the risk of heart disease. Opt for water or unsweetened beverages."
      },
      29: {
        "tip": "Manage mental health conditions.",
        "description":
            "Treating and managing mental health conditions like depression and anxiety is important for overall health, including heart health."
      },
      30: {
        "tip": "Know your family history.",
        "description":
            "Understanding your family history of heart disease can help you take proactive steps to reduce your risk."
      }
    };

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Assets.imagesAnimation1718814774495,
          ),
          Text(
            'You have a heart disease!',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                            heartDiseaseTips.keys.length,
                            (index) => Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    heartDiseaseTips[index + 1]!['tip']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    heartDiseaseTips[index + 1]![
                                        'description']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'show Tips',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
