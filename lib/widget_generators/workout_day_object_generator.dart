import '../classes/days.dart';
import '../json_data/exercise_json.dart';

class WorkoutDayObjectGenerator {
  int day;
  String level;

  WorkoutDayObjectGenerator({String level, int day}) {
    this.level = level;
    this.day = day;
  }

  List<Day> dayObjList = [];

  List<Day> addDays() {
    var obj = allexercises[this.level];
    var myList = [];
    obj.forEach((key, value) {
      myList = value['exercises'];
      dayObjList.add(Day(
          dayNumber: int.parse(key),
          caloriesBurned: value['caloriesBurned'],
          totalWorkoutMinutes: value['totalWorkoutMinutes'],
          workoutCount: myList.length,
          exerciseList: myList));
    });

    return dayObjList;
  }
}
