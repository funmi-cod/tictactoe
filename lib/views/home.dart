import 'package:flutter/material.dart';
import 'package:tictactoe/widget/component/shape.dart';

import '../constants.dart';
import '../widget/home_page/home_page_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // screen size
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
                  ButtonsWrapper(),// game button
                  const Button('Rules',),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}