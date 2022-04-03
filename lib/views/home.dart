import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/widget/component/shape.dart';

import '../constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              bottom: size.height * 0.07, top: size.height * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
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
                  Row(
                    children: [
                      Circle(size.width * 0.15),
                      XSign(size.width * 0.15),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}