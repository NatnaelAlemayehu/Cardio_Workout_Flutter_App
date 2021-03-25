import './exercises_of_a_day_widget.dart';
import '../json_data/exercise_json.dart';

class DayExerciseListGenerator {
  int day;
  String level;
  List<ExercisePreviewOfaDay> cards = [];

  DayExerciseListGenerator({String level, int day}) {
    this.level = level;
    this.day = day;
  }

  List<ExercisePreviewOfaDay> generate() {
    var Exercises = new List();
    Exercises = allexercises[this.level][this.day.toString()]['exercises'];

    for (int i = 0; i < Exercises.length; i++) {
      cards.add(
        ExercisePreviewOfaDay(
            name: Exercises[i]['name'],
            reps: Exercises[i]['reps'],
            minute: Exercises[i]['minutes'],
            second: Exercises[i]['seconds']),
      );
    }
    return cards;
  }
}
