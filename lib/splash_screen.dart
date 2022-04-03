import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tictactoe/constants.dart';
import 'package:tictactoe/views/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () => Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> Home()),),);
  }
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     colors: [
          //       kPrimaryColor,
          //       kBgColor,
          //     ],
          //   ),
          // ),
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: -25,
                child: Icon(
                  LineAwesomeIcons.times,
                  size: size.width * 0.10,
                  color: kXColor,
                ),
              ),
              Positioned(
                bottom: 20,
                left: -40,
                child: Icon(
                  LineAwesomeIcons.times,
                  size: size.width * 0.15,
                  color: kTextColor,
                ),
              ),
              Positioned(
                top: 80,
                left: 100,
                child: Container(
                  child: RichText(
                    text: TextSpan(
                      text: "TIC ",
                      style: headingStyle,
                      children: [
                        TextSpan(
                          text: 'TAC ',
                          style: spanStyle,
                        ),
                        TextSpan(
                          text: 'TOE',
                          style: spanStyle2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                right: 60,
                child: AvatarGlow(
                  endRadius: 130,
                  duration: Duration(seconds: 1),
                  glowColor: kTextColor,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 1),
                  startDelay: Duration(seconds: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/tictactoe.jpg"),
                      radius: 90,
                    ),
                  ),
                ),),
              Positioned(
                top: 10,
                right: -20,
                child: Icon(
                  LineAwesomeIcons.circle,
                  size: size.width * 0.10,
                  color: kOColor,
                ),
              ),
              Positioned(
                bottom: 70,
                right: 25,
                child: Icon(
                  LineAwesomeIcons.star,
                  size: size.width * 0.05,
                  color: kOColor,
                ),
              ),
              Positioned(
                bottom: 140,
                right: -15,
                child: Icon(
                  LineAwesomeIcons.times,
                  size: size.width * 0.10,
                  color: kXColor,
                ),
              ),
              Positioned(
                bottom: 150,
                left: 70,
                child: Icon(
                  LineAwesomeIcons.circle,
                  size: size.width * 0.05,
                  color: kOColor,
                ),
              ),
              Positioned(
                top: -10,
                right: 80,
                child: Icon(
                  LineAwesomeIcons.star,
                  size: size.width * 0.05,
                  color: kTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
