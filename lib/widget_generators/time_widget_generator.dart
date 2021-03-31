import 'package:flutter/cupertino.dart';

import '../classes/days.dart';
import '../json_data/exercise_json.dart';
import '../widgets/timer_widget.dart';

class TimeWidgetGenerator {
  int day;
  String level;
  int currentExecrcise;

  TimeWidgetGenerator({String level, int day, int currentExercise}) {
    this.level = level;
    this.day = day;
    this.currentExecrcise = currentExecrcise;
  }

  Widget generate() {
    var exercises, selectedExercise, seconds, minute, totalSecondsCalc, format;
    exercises = allexercises[this.level][this.day.toString()]['exercises'];
    selectedExercise = exercises[this.currentExecrcise - 1];
    // seconds = selectedExercise['seconds'];
    // minute = selectedExercise['minutes'];
    // totalSecondsCalc = seconds + minute * 60;
    // minute != 0 ? format = "mm:ss" : format = "ss";
    return TimerWidget(totalSeconds: 10, countDownTextFormat: "ss");
  }
}
