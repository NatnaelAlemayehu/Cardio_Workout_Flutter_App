import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/widget_generators/single_exercise_content_generator.dart';
import './home_screen.dart';

class SingleExcercise extends StatefulWidget {
  static const String id = "single_excercise";

  final int day;
  final String level;
  int currentPosition;

  SingleExcercise({Key key, this.day, this.level, this.currentPosition})
      : super(key: key);

  @override
  _SingleExcerciseState createState() => _SingleExcerciseState();
}

class _SingleExcerciseState extends State<SingleExcercise> {
  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to go back to Home Screen?'),
            actions: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              new GestureDetector(
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(HomeScreen.id)),
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Workout'),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //     Navigator.popUntil(context, ModalRoute.withName(HomeScreen.id));
          //   },
          // ),
        ),
        body: SingleExerciseContentGenerator(
                level: widget.level,
                day: widget.day,
                position: widget.currentPosition)
            .generate(),
      ),
    );
  }
}
