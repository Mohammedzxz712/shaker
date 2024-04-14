import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_doctor/modules/tips/tips_details.dart';
import 'package:heart_doctor/shared/style/colors/app_colors.dart';
import '../../generated/assets.dart';

class TipsScreen extends StatefulWidget {
  static const String routeName = 'ahadeth';

  const TipsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TipsScreen();
  }
}

class _TipsScreen extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Image(
            image: AssetImage(Assets.images34085583Sl0916203518040),
          ),
        ),
        Divider(
          thickness: 2,
          color: Color(0xffcf8c33),
        ),
        Text(
          'Tips',
        ),
        Divider(
          thickness: 2,
          color: Color(0xffcf8c33),
        ),
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TipsDetails.routeName,
                    arguments: {'tips': index + 1});
              },
              child: Text(
                'Tips ${index + 1}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
                thickness: 1,
                color: Color(0xffcf8c33),
                indent: 40,
                endIndent: 40),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
