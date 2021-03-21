import 'package:fitness_screen/classes/days.dart';

class Level {
  String levelName;
  List<Days> listOfDays;
  List<Level> levels = [];

  Level(String levelName, List<Days> listOfDays, [int progressPercentage = 0]) {
    this.levelName = levelName;
    this.listOfDays = listOfDays;
  }

  generate() {
    levels.add(Level("Beginners", [
      Days(
          dayNumber: 1,
          caloriesBurned: 1000,
          totalWorkoutMinutes: 20,
          workoutCount: 10)
    ]));
    levels.add(Level("Intermediate", [
      Days(
          dayNumber: 1,
          caloriesBurned: 1000,
          totalWorkoutMinutes: 20,
          workoutCount: 10)
    ]));
    levels.add(Level("Advanced", [
      Days(
          dayNumber: 1,
          caloriesBurned: 1000,
          totalWorkoutMinutes: 20,
          workoutCount: 10)
    ]));
  }
}
