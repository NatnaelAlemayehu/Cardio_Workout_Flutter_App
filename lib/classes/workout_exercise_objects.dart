import 'package:fitness_screen/classes/workout_exercise.dart';

class WorkoutExerciseObjectGenerator {
  List<WorkoutExercise> beginnersDay1Workout = [];

  WorkoutExerciseObjectGenerator();

  List<String> workoutNames = [
    "Back_and_Forth_Squat",
    "Bird_Dog",
    "Burpees",
    "Cancan_Jump",
    "Cross_Country_Run",
    "Frog_Jumps",
    "Hero_Jumps",
    "High_Jump",
    "High_Knees"
  ];

  List<WorkoutExercise> generate() {
    for (var workoutName in workoutNames) {
      beginnersDay1Workout.add(
        WorkoutExercise(
          gifUrl: "assets/$workoutName.gif",
          workoutName: workoutName,
          prevWorkoutGifUrl: workoutNames.indexOf(workoutName) != 0
              ? workoutNames.indexOf(workoutName) - 1
              : "",
          nextWorkoutGifUrl:
              workoutNames.indexOf(workoutName) != workoutNames.length
                  ? workoutNames.indexOf(workoutName) + 1
                  : "",
          seconds: 10,
          minutes: 1,
        ),
      );
    }
    return beginnersDay1Workout;
  }
}
