import '../../widgets/single_exercise_widget.dart';
import '../../json_data/exercise_json.dart';

class SingleExerciseContentGenerator {
  int day;
  String level;
  int position;
  int exerciseListLength;

  SingleExerciseContentGenerator({String level, int day, int position}) {
    this.level = level;
    this.day = day;
    this.position = position;
  }

  SingleExerciseWidget generate() {
    var Exercises = [];
    Exercises = allexercises[this.level][this.day.toString()]['exercises'];
    this.exerciseListLength = Exercises.length;
    return SingleExerciseWidget(
        day: this.day,
        level: this.level,
        gifName: Exercises[this.position - 1]['name'],
        reps: Exercises[this.position - 1]['reps'],
        minute: Exercises[this.position - 1]['minute'],
        second: Exercises[this.position - 1]['second'],
        currentPosition: this.position,
        listLength: this.exerciseListLength);
  }
}
