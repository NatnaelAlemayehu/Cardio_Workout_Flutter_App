import 'package:flutter/material.dart';

class DetailsForaDayExercise extends StatefulWidget {
  final int exerciseCount;
  final int totalWorkoutMinutes;
  final int caloriesBurned;

  DetailsForaDayExercise(
      {Key key,
      this.exerciseCount,
      this.totalWorkoutMinutes,
      this.caloriesBurned})
      : super(key: key);

  @override
  _DetailsForaDayExerciseState createState() => _DetailsForaDayExerciseState();
}

class _DetailsForaDayExerciseState extends State<DetailsForaDayExercise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.exerciseCount}',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text('Exercises')
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.totalWorkoutMinutes} min',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  Text('Time')
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 0.5, color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.caloriesBurned} KCal',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Burned')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
