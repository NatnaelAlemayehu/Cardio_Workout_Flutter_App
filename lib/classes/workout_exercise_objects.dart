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
          gifUrl: "assets/workout_gifs/$workoutName.gif",
          workoutName: workoutName,
          prevWorkoutGifUrl: workoutNames.indexOf(workoutName) != 0
              ? "assets/workout_gifs/${workoutNames[workoutNames.indexOf(workoutName) - 1]}.gif"
              : "",
          nextWorkoutGifUrl: workoutNames.indexOf(workoutName) !=
                  workoutNames.length - 1
              ? "assets/workout_gifs/${workoutNames[workoutNames.indexOf(workoutName) + 1]}.gif"
              : "",
          seconds: 10,
          minutes: 1,
        ),
      );
    }
    return beginnersDay1Workout;
  }
}
