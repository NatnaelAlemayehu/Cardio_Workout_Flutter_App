import 'package:flutter/material.dart';
import 'package:fitness_screen/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'NotoSans',
          primarySwatch: Colors.purple,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
    );
  }
}