import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

class CourcePage extends StatelessWidget {
  const CourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [HeroWidget(title: "Cource")]),
        ),
      ),
    );
  }
}
