import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/settings_page.dart';

import '../widgets/navbar_widget.dart';
import 'pages/profile_page.dart';

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
    return ListenableBuilder(
      listenable: Listenable.merge([selectedPageNotifier, isDarkMode]),
      builder: (context, _) {
        final darkMode = isDarkMode.value;
        return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Mapp"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () => isDarkMode.value = !isDarkMode.value,
                icon: Icon(darkMode ? Icons.dark_mode : Icons.light_mode),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SettingsPage();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
          body: pages.elementAt(selectedPageNotifier.value),
          bottomNavigationBar: NavbarWidget(),
        );
      },
    );
  }
}
