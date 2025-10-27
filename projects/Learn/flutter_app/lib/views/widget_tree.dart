import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';

import '../widgets/navbar_widget.dart';

String? title = "Flutter Mapp";
// int selectedIndex = 0;
List<Widget> pages = [ProfilePage(), HomePage()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedIndex, child) {
        return Scaffold(
          appBar: AppBar(title: Text("Flutter Mapp"), centerTitle: true),
          body: pages.elementAt(selectedPageNotifier.value),
          bottomNavigationBar: NavbarWidget(),
        );
      },
    );
  }
}
