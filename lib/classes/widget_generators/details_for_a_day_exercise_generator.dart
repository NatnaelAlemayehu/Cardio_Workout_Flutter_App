import 'package:flutter/material.dart';
import '../../json_data/exercise_json.dart';
import 'package:fitness_screen/widgets/details_for_a_day_exercise_widget.dart';

class DetailsForaDayExerciseGenerator {
  int day;
  String level;

  DetailsForaDayExerciseGenerator({String level, int day}) {
    this.level = level;
    this.day = day;
  }

  Widget generate() {
    print(this.level);
    var exerciseObj = allexercises[this.level][this.day.toString()];
    var exerciseList = [];
    exerciseList = exerciseObj['exercises'];
    return DetailsForaDayExercise(
      exerciseCount: exerciseList.length,
      totalWorkoutMinutes: exerciseObj['totalWorkoutMinutes'],
      caloriesBurned: exerciseObj['caloriesBurned'],
    );
  }
}
