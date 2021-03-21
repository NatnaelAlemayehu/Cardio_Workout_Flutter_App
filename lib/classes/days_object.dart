import 'days.dart';
import 'workout_exercise.dart';
import 'workout_exercise_objects.dart';

class DayGenerator {
  List<Days> beginnerDays = [];
  List<Days> intermediateDays = [];
  List<Days> advancedDays = [];

  List<Days> addBeginners() {
    beginnerDays.addAll([
      Days(
        dayNumber: 1,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 2,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 3,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
    ]);
    return beginnerDays;
  }

  List<Days> addIntermediate() {
    intermediateDays.addAll([
      Days(
        dayNumber: 1,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 2,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 3,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
    ]);
    return intermediateDays;
  }

  List<Days> addAdvanced() {
    advancedDays.addAll([
      Days(
        dayNumber: 1,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 2,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
      Days(
        dayNumber: 3,
        caloriesBurned: 2000,
        totalWorkoutMinutes: 30,
        workoutCount: 10,
        exerciseList: WorkoutExerciseObjectGenerator().generate(),
      ),
    ]);
    return advancedDays;
  }

  void generate() {
    addBeginners();
    addIntermediate();
    addAdvanced();
  }
}
