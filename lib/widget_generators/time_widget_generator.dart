import 'package:flutter/cupertino.dart';

import '../classes/days.dart';
import '../json_data/exercise_json.dart';
import '../widgets/timer_widget.dart';

class TimeWidgetGenerator {
  int day;
  String level;
  int currentExercise;

  TimeWidgetGenerator({String level, int day, int currentExercise}) {
    this.level = level;
    this.day = day;
    this.currentExercise = currentExercise;
  }

  Widget generate() {
    var exercises,
        selectedExercise,
        seconds,
        minute,
        totalSecondsCalc,
        format,
        fontSize;
    exercises = allexercises[this.level][this.day.toString()]['exercises'];
    selectedExercise = exercises[this.currentExercise - 1];
    seconds = selectedExercise['second'];
    minute = selectedExercise['minute'];
    totalSecondsCalc = seconds + minute * 60;
    minute != 0 ? format = "mm:ss" : format = "ss";
    minute != 0 ? fontSize = 25.0 : fontSize = 33.0;
    return TimerWidget(
        totalSeconds: totalSecondsCalc,
        countDownTextFormat: format,
        fontSize: fontSize);
  }
}
