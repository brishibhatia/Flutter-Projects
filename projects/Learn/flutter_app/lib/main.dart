import 'package:flutter/material.dart';

import 'widgets/navbar_widget.dart';

void main() {
  runApp(const MyApp());
}

String? title = "Flutter Mapp";
int selectedIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(title!), centerTitle: true),
        // body: selectedIndex == 0
        //     ? Center(child: Text("data"))
        //     : Center(child: Text("2")),
        bottomNavigationBar: NavbarWidget(),
      ),
    );
  }
}
