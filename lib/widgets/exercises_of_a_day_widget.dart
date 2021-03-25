import 'package:flutter/material.dart';

class ExercisePreviewOfaDay extends StatefulWidget {
  final String name;
  final int reps;
  final int minute;
  final int second;

  const ExercisePreviewOfaDay(
      {Key key, this.name, this.reps, this.minute, this.second})
      : super(key: key);

  @override
  _ExercisePreviewOfaDayState createState() => _ExercisePreviewOfaDayState();
}

class _ExercisePreviewOfaDayState extends State<ExercisePreviewOfaDay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
      height: 80.0,
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/workout_gifs/${widget.name}.gif'),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print('hi');
              },
              child: Container(
                height: double.infinity,
                margin: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.0),
                    ),
                    Text(widget.reps != 0
                        ? 'X ${widget.reps}'
                        : widget.minute != 0
                            ? '${widget.minute} : ${widget.second}'
                            : '${widget.second}'),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Color(0xFFFF7F7F7F),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
