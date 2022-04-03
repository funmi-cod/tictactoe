import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' as service;

import 'package:device_preview/device_preview.dart';
import 'package:provider/provider.dart';

import 'package:tictactoe/providers/game_provider.dart';
import 'package:tictactoe/splash_screen.dart';
import 'package:tictactoe/views/game.dart';



void main() {
  runApp(
    ChangeNotifierProvider( // to listen to changes in the app
        create: (context) => GameProvider(),
        child: DevicePreview( // To preview our app on different mobile device
          enabled: !kReleaseMode,
          builder: (context) => TicTacToe(),
        )),
  );
}

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    service.SystemChrome.setPreferredOrientations([
      service.DeviceOrientation.portraitUp,
      service.DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        initialRoute: '/',
        // using named route.
        routes: {

          '/': (context) => const SplashScreen(),
          '/game': (context) => Game(),
        }
    );
  }
}