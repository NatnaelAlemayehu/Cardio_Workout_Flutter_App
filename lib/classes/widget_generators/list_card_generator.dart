import 'package:flutter/material.dart';
import 'workout_day_object_generator.dart';
import '../../classes/days.dart';
import '../../widgets/level_card_list.dart';

List<Day> days = [];
String leveltopass;

class CardGenerator {
  String level;
  List<Widget> cards = [];

  CardGenerator({String level}) {
    this.level = level;
    leveltopass = level;
  }

  List<Day> generateDaysObject() {
    days = WorkoutDayObjectGenerator(level: this.level).addDays();
    return days;
  }

  List<Widget> generateCardListWidget() {
    days = WorkoutDayObjectGenerator(level: this.level).addDays();
    for (int i = 1; i <= days.length; i++) {
      cards.add(LevelDaysList(day: i, level: this.level, dayslist: days));
    }
    return cards;
  }
}
