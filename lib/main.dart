import 'package:fitness_screen/daily_excercise.dart';
import 'package:flutter/material.dart';
import 'package:fitness_screen/splash_screen.dart';
import 'package:fitness_screen/excercise_list.dart';
import 'package:fitness_screen/home_screen.dart';
import 'package:fitness_screen/login_screen.dart';
import 'package:fitness_screen/single_excercise.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'NotoSans'),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        ExcerciseList.id: (context) => ExcerciseList(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SingleExcercise.id: (context) => SingleExcercise(),
        DailyExcercise.id: (context) => DailyExcercise(),
      },
      // home: SplashScreen(),
    );
  }
}
