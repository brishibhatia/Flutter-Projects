import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/widgets/basic_app_button.dart';
import 'package:spotify_app/presentation/intro/pages/Get_started.dart';

import '../../../core/config/assets/app_vectors.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({super.key});

  @override
  State<ChooseMode> createState() => _ChooseModeState();
}

class _ChooseModeState extends State<ChooseMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/choose_mode_bg.png'),
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.15)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Center(
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Choose Mode",
                            style: TextStyle(
                              fontFamily: 'assets/fonts/Satoshi-Bold.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0xffFFFFFF,
                                          ).withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: SvgPicture.asset(AppVectors.moon),
                                  ),

                                  SizedBox(height: 10),
                                  Text(
                                    "Dark Mode",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          'assets/fonts/Satoshi-Medium.ttf',

                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 50),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0xffFFFFFF,
                                          ).withOpacity(0.3),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: SvgPicture.asset(AppVectors.sun),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Light Mode",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily:
                                          'assets/fonts/Satoshi-Medium.ttf',

                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70),
                BasicAppButton(onPressed: () {}, title: "Continue"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
