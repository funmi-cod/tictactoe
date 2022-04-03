import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import 'package:tictactoe/widget/component/shape.dart';

import '../../constants.dart';

class NextMove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    final style = GoogleFonts.lato(fontSize: state.getAdaptiveTextSize(context, 20), color: kBorderColor,);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "It's",
          style: style,
        ),
        if (xMove)
          Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.0125),
              child: XSign(
                size.height * 0.035,
              ))
        else
          Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.0125),
              child: Circle(
                size.height * 0.035,
              )),
        Text(
          'move',
          style: style,
        )
      ],
    );
  }
}