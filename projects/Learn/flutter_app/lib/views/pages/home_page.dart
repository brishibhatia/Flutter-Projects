import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:flutter_app/views/pages/onboarding.dart';
import 'package:flutter_app/widgets/container_widget.dart';
import 'package:flutter_app/widgets/cource_page.dart';
import '../../widgets/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = [
    KValue.keyConcepts,
    KValue.basicLayout,
    KValue.fixBugs,
    KValue.cleanUI,
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            HeroWidget(title: 'Home Page', nextPage: CourcePage()),
            SizedBox(height: 10),
            Column(
              children: List.generate(
                list.length,
                (index) => ContainerWidget(
                  title: list.elementAt(index),
                  description: "The description of the Layout",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
