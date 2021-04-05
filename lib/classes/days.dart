class Day {
  int dayNumber;
  int caloriesBurned;
  int totalWorkoutMinutes;
  int workoutCount;
  List<dynamic> exerciseList = [];

  Day(
      {int dayNumber,
      int caloriesBurned,
      int totalWorkoutMinutes,
      int workoutCount,
      List<dynamic> exerciseList}) {
    this.dayNumber = dayNumber;
    this.caloriesBurned = caloriesBurned;
    this.totalWorkoutMinutes = totalWorkoutMinutes;
    this.workoutCount = workoutCount;
    this.exerciseList = exerciseList;
  }
}
