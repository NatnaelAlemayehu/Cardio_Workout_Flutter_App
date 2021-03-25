import 'package:flutter/material.dart';
import '../screens/main_app_screens/single_excercise.dart';

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
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 250,
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
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  '${widget.gifName}',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(top: 40.0),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  widget.reps != ""
                      ? 'Each Side x${widget.reps}'
                      : widget.minute,
                  style: TextStyle(fontSize: 15.0),
                ),
                //margin: EdgeInsets.only(top: 40.0),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'X ${widget.reps}',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                //margin: EdgeInsets.only(top: 40.0),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: RaisedButton(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  color: Colors.purple[600],
                  textColor: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.check),
                      SizedBox(
                        width: 10.0,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SingleExcercise(
                                day: widget.day,
                                level: widget.level,
                                currentPosition: widget.currentPosition - 1),
                          ),
                        );
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
