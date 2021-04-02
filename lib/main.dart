import 'package:flutter/material.dart';
import 'package:fitness_screen/screens/main_app_screens/splash_screen.dart';
import 'package:fitness_screen/screens/main_app_screens/daily_excercise.dart';
import 'package:fitness_screen/screens/main_app_screens/excercise_list.dart';
import 'package:fitness_screen/screens/main_app_screens/home_screen.dart';
import 'package:fitness_screen/screens/main_app_screens/single_excercise.dart';
import 'package:fitness_screen/screens/menu_screens/profile.dart';
import 'package:fitness_screen/screens/menu_screens/report.dart';
import 'package:fitness_screen/screens/menu_screens/settings.dart';
import 'package:fitness_screen/screens/menu_screens/sync_workout.dart';
import 'package:fitness_screen/screens/login_screens/login.dart';
import 'package:fitness_screen/screens/login_screens/signup.dart';
import 'package:fitness_screen/screens/menu_screens/feed.dart';
import 'package:fitness_screen/screens/menu_screens/policy.dart';
import 'package:fitness_screen/screens/menu_screens/rate.dart';

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
        LoginPage.id: (context) => LoginPage(),
        SignupPage.id: (context) => SignupPage(),
        SingleExcercise.id: (context) => SingleExcercise(),
        DailyExcercise.id: (context) => DailyExcercise(),
        Profile.id: (context) => Profile(),
        Rate.id: (context) => Rate(),
        Feed.id: (context) => Feed(),
        Policy.id: (context) => Policy(),
        Report.id: (context) => Report(),
        Settings.id: (context) => Settings(),
        SyncWorkout.id: (context) => SyncWorkout(),
      },
    );
  }
}
