import 'package:flutter/material.dart';

class SyncWorkout extends StatefulWidget {
  static const String id = "syncworkout";

  @override
  _SyncWorkoutState createState() => _SyncWorkoutState();
}

class _SyncWorkoutState extends State<SyncWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Sync Successful !',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Text(
                "You can go back now",
                style: TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
        ));
  }
}
