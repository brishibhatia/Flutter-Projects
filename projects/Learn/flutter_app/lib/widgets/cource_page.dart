import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/data/classes/activity_class.dart';
import 'package:flutter_app/widgets/hero_widget.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class CourcePage extends StatefulWidget {
  const CourcePage({super.key});

  @override
  State<CourcePage> createState() => _CourcePageState();
}

class _CourcePageState extends State<CourcePage> {
  late Activity activity;
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      activity = Activity.fromJson(
        convert.jsonDecode(response.body) as Map<String, dynamic>,
      );
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['accessibility'];
      print("Item count is $itemCount");
      log(response.body);
    } else {
      print("error code is ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: "Cource")]),
              ),
            );
          }
          if (snapshot.hasError) {
            return Text('Album Title: ${snapshot.data}');
          } else {
            return Center(child: const Text('No data available'));
          }
        },
      ),
    );
  }
}
