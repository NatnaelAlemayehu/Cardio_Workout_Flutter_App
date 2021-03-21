import 'package:fitness_screen/classes/exerciseList.dart';

class Days {
  String dayNumber;
  int caloriesBurned;
  int totalWorkoutMinutes;
  int workoutCount;
  List<WorkoutExercise> ExerciseList = [];

  Days(String dayNumber, int caloriesBurned, int totalWorkoutMinutes,
      int workoutCount) {
    this.dayNumber = dayNumber;
    this.caloriesBurned = caloriesBurned;
    this.totalWorkoutMinutes = totalWorkoutMinutes;
    this.workoutCount = workoutCount;
  }
}
