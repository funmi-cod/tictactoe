import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tictactoe/constants.dart';

//Define X properties
class XSign extends StatelessWidget {
  final double shapeSize;

  const XSign(this.shapeSize);

  @override
  Widget build(BuildContext context) {
    return Icon(
      LineAwesomeIcons.times,
      size: shapeSize,
      color: kXColor,
    );
  }
}

// define O properties
class Circle extends StatelessWidget {
  final double shapeSize;

  const Circle(this.shapeSize);

  @override
  Widget build(BuildContext context) {
    return Icon(
      LineAwesomeIcons.circle,
      size: shapeSize,
      color: kOColor,
    );
  }
}