import 'package:fitness_screen/classes/days.dart';

class Level {
  String levelName;
  int progressPercentage;
  List<Days> listOfDays;

  Level(String levelName, List<Days> listOfDays, [int progressPercentage = 0]) {
    this.levelName = levelName;
    this.listOfDays = listOfDays;
    this..progressPercentage = progressPercentage;
  }
}
