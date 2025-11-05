import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/widgets/hero_widget.dart';

import '../widget_tree.dart';
import 'settings_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),

            Container(
              margin: EdgeInsets.only(top: 5),
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetTree()),
                  );
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
