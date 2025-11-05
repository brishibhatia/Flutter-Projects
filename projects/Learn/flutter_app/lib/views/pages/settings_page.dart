import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final String username;
  final int age;
  const SettingsPage({super.key, required this.age, required this.username});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Settings Page ${widget.age}")),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context, {"username": widget.username});
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'e1', child: Text("Element 1")),
                  DropdownMenuItem(value: 'e2', child: Text("Element 2")),
                  DropdownMenuItem(value: 'e3', child: Text("Element 3")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {}); // rebuild on every text change
                },
              ),
              Text(controller.text),
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                    if (isChecked == true) {
                      controller.text = "Flutter dev";
                    } else {
                      controller.text = " ";
                    }
                  });
                },
              ),
              Slider.adaptive(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              InkWell(
                splashColor: Colors.teal,

                onTap: () {
                  print("object");
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,

                  child: Image.asset('assets/images/bg.jpg', fit: BoxFit.cover),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Click me")),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text("Click me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
