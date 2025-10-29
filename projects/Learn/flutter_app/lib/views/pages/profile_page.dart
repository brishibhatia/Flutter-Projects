import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
    );
  }
}
