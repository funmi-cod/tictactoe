import 'package:flutter/material.dart';
import 'package:tictactoee/widget/game_page/game_page_widgets.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Score Board widget
            Padding(
              padding:  EdgeInsets.only(top: size.height*0.04,),
              child: Results(),
            ),
            Column(
              children: [
                WhoseMove(),
                Board(),
              ],
            ),

            // navigate to home page
            BackBtn(),
          ],
        ),
      ),
    );
  }
}