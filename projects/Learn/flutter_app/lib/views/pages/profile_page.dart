import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("LogOut"),
      leading: Icon(Icons.select_all_rounded),
      tileColor: Colors.amberAccent,
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WelcomePage();
            },
          ),
        );
      },
    );
  }
}
