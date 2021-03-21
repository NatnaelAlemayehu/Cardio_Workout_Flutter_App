import 'package:fitness_screen/exercise_screens/daily_excercise.dart';
import 'package:flutter/material.dart';
import 'days_object.dart';
import 'days.dart';

List<Days> days = [];

class CardGenerator {
  String level;
  List<Widget> cards = [];

  CardGenerator({String level}) {
    this.level = level;
  }

  List<Widget> generate() {
    switch (level) {
      case "Beginner":
        days = DayGenerator().addBeginners();
        break;
      case "Intermediate":
        days = DayGenerator().addIntermediate();
        break;
      case "Advanced":
        days = DayGenerator().addAdvanced();
        break;
      default:
        print("error");
        break;
    }

    for (int i = 1; i <= days.length; i++) {
      cards.add(CardList(day: i, level: level));
    }

    return cards;
  }
}

class CardList extends StatefulWidget {
  final int day;
  final String level;

  const CardList({
    Key key,
    @required this.day,
    @required this.level,
  }) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffDCDBF1),
      child: InkWell(
        splashColor: const Color(0xffEB10FE),
        onTap: () {
          Navigator.pushNamed(
            context,
            DailyExcercise.id,
            arguments: DailyExcercise(day: widget.day, level: widget.level),
          );
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
                Text(days[widget.day - 1].workoutCount != 0
                    ? '${days[widget.day - 1].workoutCount} Excercises'
                    : 'Break Day'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
