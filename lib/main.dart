import 'package:flutter/material.dart';
import 'package:tictactoe/splash_screen.dart';
import 'package:tictactoe/views/home.dart';

void main() {
  runApp( TicTacToe());
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        // using named route.
        routes: {

          '/': (context) => SplashScreen(),
          '/home': (context) => Home(),
        }
    );
  }
}