import 'package:flutter/material.dart';
import 'package:tictactoe/widget/home_page/button.dart';

class ButtonsWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // game buttons
      children: [
        Button('start game', Colors.lightBlue.shade800),
        Button('play with a friend', Colors.yellow.shade700),
      ],
    );
  }
}