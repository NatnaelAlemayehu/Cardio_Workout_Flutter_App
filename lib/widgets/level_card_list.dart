import 'package:flutter/material.dart';
import '../screens/main_app_screens/daily_excercise.dart';
import '../classes/days.dart';

class LevelDaysList extends StatefulWidget {
  final int day;
  final String level;
  final List<Day> dayslist;

  const LevelDaysList({
    Key key,
    this.day,
    this.level,
    this.dayslist,
  }) : super(key: key);

  @override
  _LevelDaysListState createState() => _LevelDaysListState();
}

class _LevelDaysListState extends State<LevelDaysList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffDCDBF1),
      child: InkWell(
        splashColor: const Color(0xffEB10FE),
        onTap: () {
          if (widget.dayslist[widget.day - 1].workoutCount != 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DailyExcercise(day: widget.day, level: widget.level),
              ),
            );
          }
          // Navigator.pushNamed(
          //   context,
          //   DailyExcercise.id,
          //   arguments: DailyExcercise(day: widget.day, level: widget.level),
          // );
        },
        child: Container(
          width: double.infinity,
          height: 70,
          child: Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Day ${widget.day}',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(widget.dayslist[widget.day - 1].workoutCount != 0
                    ? '${widget.dayslist[widget.day - 1].workoutCount} Exercises'
                    : 'Break Day'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
