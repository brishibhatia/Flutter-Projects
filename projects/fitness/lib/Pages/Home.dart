import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search PanCakes",
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/icons/Search.svg',
                    height: 20,
                    width: 20,
                    color: Colors.black,
                  ),
                ),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(width: 1, height: 20, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/Filter.svg',
                        height: 20,
                        width: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: Text(
        "Breakfast",
        style: TextStyle(
          fontSize: 24,
          color: Colors.lightBlue,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(115, 238, 236, 236),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 20,
          width: 20,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(115, 238, 236, 236),
            borderRadius: BorderRadius.circular(10),
          ),
          width: 37,
          alignment: Alignment.center,
          child: SvgPicture.asset('assets/icons/dots.svg', height: 5, width: 5),
        ),
      ],
      backgroundColor: Colors.deepOrange,
      centerTitle: true,
    );
  }
}
