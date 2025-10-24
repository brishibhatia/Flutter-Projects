import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Flutter Mapp"),
          centerTitle: true,
          // leading: Icon(Icons.back_hand_rounded),
          actions: [
            Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text("App Drawer")),
              Container(
                // padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),

                child: ListTile(
                  title: Text("Login"),
                  leading: Icon(Icons.login),
                  trailing: Icon(Icons.back_hand),
                  tileColor: Colors.amberAccent,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.contact_emergency),
              label: 'Contact',
            ),
            NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
          selectedIndex: 1,
        ),
      ),
    );
  }
}
