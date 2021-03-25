import './exercise.dart';

class WorkoutExercise extends Exercise {
  String gifUrl;
  String workoutName;
  String nextWorkoutGifUrl;
  String prevWorkoutGifUrl;
  int minutes;
  int seconds;
  int reps;

  WorkoutExercise(
      {String gifUrl,
      String workoutName,
      String prevWorkoutGifUrl = '',
      String nextWorkoutGifUrl = '',
      int seconds = 0,
      int minutes = 0,
      int reps = 0})
      : super(gifUrl, workoutName);
}
