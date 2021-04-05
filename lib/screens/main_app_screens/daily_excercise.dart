import 'package:flutter/material.dart';
import './single_excercise.dart';
import '../../classes/widget_generators/exercise_preview_of_day_widget_generator.dart';
import '../../classes/widget_generators/details_for_a_day_exercise_generator.dart';

class DailyExcercise extends StatefulWidget {
  static const String id = "daily_excercise";

  final int day;
  final String level;

  DailyExcercise({
    Key key,
    this.day,
    this.level,
  }) : super(key: key);

  @override
  _DailyExcerciseState createState() => _DailyExcerciseState();
}

class _DailyExcerciseState extends State<DailyExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Exercise'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/workout.jpg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  // color: Colors.redAccent,
                ),
              ),
              Positioned(
                child: Text(
                  'Day ${widget.day}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                top: 50.0,
                left: 15.0,
              ),
              Positioned(
                child: Row(
                  children: [
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Text(widget.level),
                  ],
                ),
                top: 95.0,
                left: 15.0,
              )
            ],
          ),
          DetailsForaDayExerciseGenerator(level: widget.level, day: widget.day)
              .generate(),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children:
                  DayExerciseListGenerator(level: widget.level, day: widget.day)
                      .generate(),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Container(
          height: 55,
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleExcercise(
                      day: widget.day, level: widget.level, currentPosition: 1),
                ),
              );
              // Navigator.pushNamed(
              //   context,
              //   DailyExcercise.id,
              //   arguments: SingleExcercise(
              //       day: widget.day, level: widget.level, currentPosition: 1),
              // );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
