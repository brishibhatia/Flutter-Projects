import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Home Page'),
            // Lottie.asset(
            //   'assets/animations/Growing House.lottie',
            //   width: 200,
            //   height: 200,
            //   fit: BoxFit.contain,
            // ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Basic Layout", style: KTextStyle.titleTealText),
                      Text(
                        "The description of this layout",
                        style: KTextStyle.descTealText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
