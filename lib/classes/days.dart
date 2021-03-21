import 'package:fitness_screen/classes/workout_exercise.dart';

class Days {
  int dayNumber;
  int caloriesBurned;
  int totalWorkoutMinutes;
  int workoutCount;
  List<WorkoutExercise> exerciseList = [];

  Days(
      {int dayNumber,
      int caloriesBurned,
      int totalWorkoutMinutes,
      int workoutCount,
      List<WorkoutExercise> exerciseList}) {
    this.dayNumber = dayNumber;
    this.caloriesBurned = caloriesBurned;
    this.totalWorkoutMinutes = totalWorkoutMinutes;
    this.workoutCount = workoutCount;
    this.exerciseList = exerciseList;
  }
}
