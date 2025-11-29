import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/config/assets/app_images.dart';
import 'package:spotify_app/core/config/assets/app_vectors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.introImage, fit: BoxFit.fill),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo),
              ),

              Spacer(),
              Text(
                "Enjoy Listening to Music",
                style: TextStyle(
                  fontFamily: 'assets/fonts/Satoshi-Bold.ttf',
                  fontSize: 25,
                  color: Color(0xffDADADA),
                ),
              ),
            ],
          ),
          Container(color: Colors.black.withOpacity(0.15)),
        ],
      ),
    );
  }
}
