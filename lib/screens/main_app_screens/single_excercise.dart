import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widget_generators/single_exercise_content_generator.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout'),
      ),
      body: SingleExerciseContentGenerator(
              level: widget.level,
              day: widget.day,
              position: widget.currentPosition)
          .generate(),
    );
  }
}
