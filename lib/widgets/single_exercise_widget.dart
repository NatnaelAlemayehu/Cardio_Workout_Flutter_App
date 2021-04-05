import 'package:flutter/material.dart';
import '../screens/main_app_screens/single_excercise.dart';
import '../classes/widget_generators/time_widget_generator.dart';
import '../screens/main_app_screens/excercise_list.dart';

class SingleExerciseWidget extends StatefulWidget {
  final int day;
  final String level;
  final String gifName;
  final int reps;
  final int minute;
  final int second;
  int currentPosition;
  int listLength;
  SingleExerciseWidget(
      {Key key,
      this.day,
      this.level,
      this.gifName,
      this.reps,
      this.minute,
      this.second,
      this.listLength,
      this.currentPosition = 1})
      : super(key: key);

  @override
  _SingleExerciseWidgetState createState() => _SingleExerciseWidgetState();
}

class _SingleExerciseWidgetState extends State<SingleExerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            // height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/workout_gifs/${widget.gifName}.gif'),
              ),
              // borderRadius: BorderRadius.all(Radius.circular(8.0)),
              // color: Colors.redAccent,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: widget.minute != 0 || widget.second != 0
                          ? TimeWidgetGenerator(
                                  level: widget.level,
                                  day: widget.day,
                                  currentExercise: widget.currentPosition)
                              .generate()
                          : Text(
                              'X ${widget.reps}',
                              style: TextStyle(
                                  fontSize: 40.0, fontWeight: FontWeight.bold),
                            ),
                      //margin: EdgeInsets.only(top: 40.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              '${widget.gifName}',
                              style: TextStyle(
                                  fontSize: 30.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: widget.minute != 0 || widget.second != 0
                                ? Text(
                                    widget.reps != ""
                                        ? 'Watch your time'
                                        : widget.minute,
                                    style: TextStyle(fontSize: 15.0),
                                  )
                                : Text(
                                    widget.reps != ""
                                        ? 'Each Side x${widget.reps}'
                                        : widget.minute,
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                            //margin: EdgeInsets.only(top: 40.0),
                          ),
                          SizedBox(height: 10),
                          Container(
                            // ignore: deprecated_member_use
                            // width: 180,
                            child: RaisedButton(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {
                                if (widget.currentPosition <
                                    widget.listLength) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SingleExcercise(
                                          day: widget.day,
                                          level: widget.level,
                                          currentPosition:
                                              widget.currentPosition + 1),
                                    ),
                                  );
                                } else if (widget.currentPosition ==
                                    widget.listLength) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ExcerciseList(
                                        level: widget.level,
                                        animation: true,
                                      ),
                                    ),
                                  );
                                }
                              },
                              color: Colors.purple[600],
                              textColor: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.check),
                                  SizedBox(
                                    width: 2.0,
                                  ),
                                  Text("Done".toUpperCase(),
                                      style: TextStyle(fontSize: 14)),
                                ],
                              ),
                            ),
                            //margin: EdgeInsets.only(top: 40.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: 70.0, bottom: 20.0, left: 30.0, right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (widget.currentPosition > 1) {
                        Navigator.pop(context);
                      }
                      // Navigator.pushNamed(
                      //   context,
                      //   SingleExcercise.id,
                      //   arguments: SingleExcercise(
                      //       day: widget.day,
                      //       level: widget.level,
                      //       currentPosition: widget.currentPosition > 1
                      //           ? widget.currentPosition - 1
                      //           : widget.currentPosition),
                      // );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.skip_previous_outlined,
                          size: 30.0,
                        ),
                        Text(
                          'Previous',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // SizedBox(width: 150.0),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (widget.currentPosition < widget.listLength) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SingleExcercise(
                                day: widget.day,
                                level: widget.level,
                                currentPosition: widget.currentPosition + 1),
                          ),
                        );
                      } else if (widget.currentPosition == widget.listLength) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExcerciseList(
                              level: widget.level,
                              animation: true,
                            ),
                          ),
                        );
                      }
                      // Navigator.pushNamed(
                      //   context,
                      //   SingleExcercise.id,
                      //   arguments: SingleExcercise(
                      //       day: widget.day,
                      //       level: widget.level,
                      //       currentPosition:
                      //           widget.currentPosition < widget.listLength
                      //               ? widget.currentPosition + 1
                      //               : widget.currentPosition),
                      // );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.skip_next_outlined,
                          size: 30.0,
                        ),
                        Text(
                          'Skip',
                          style: TextStyle(fontSize: 18.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
