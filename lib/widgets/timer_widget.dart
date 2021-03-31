import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerWidget extends StatelessWidget {
  final int totalSeconds;
  final String countDownTextFormat;

  const TimerWidget({Key key, this.totalSeconds, this.countDownTextFormat})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: totalSeconds,
      initialDuration: 0,
      controller: CountDownController(),
      width: 100,
      height: 100,
      ringColor: Colors.grey[300],
      ringGradient: null,
      fillColor: Colors.lightGreen[700],
      fillGradient: LinearGradient(
        begin: Alignment.topLeft,
        end:
            Alignment.bottomRight, // 10% of the width, so there are ten blinds.
        colors: <Color>[
          Colors.lightGreen[900],
          Color(0xff829A01),
        ], // red to yellow
        tileMode: TileMode.repeated, // repeats the gradient over the canvas
      ),
      backgroundColor: Colors.white,
      backgroundGradient: null,
      strokeWidth: 20.0,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(
          fontSize: 33.0, color: Colors.black, fontWeight: FontWeight.bold),
      textFormat: countDownTextFormat,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: true,
      onStart: () {
        print('Countdown Started');
      },
      onComplete: () {
        print('Countdown Ended');
      },
    );
  }
}
