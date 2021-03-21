import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fitness_screen/exercise_screens/single_excercise.dart';

class DailyExcercise extends StatefulWidget {
  static const String id = "daily_excercise";

  final int day;
  final String level;

  DailyExcercise({
    Key key,
    this.day,
    this.level,
  }) : super(key: key);

  @override
  _DailyExcerciseState createState() => _DailyExcerciseState();
}

class _DailyExcerciseState extends State<DailyExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Excercise'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/workout.jpg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  // color: Colors.redAccent,
                ),
              ),
              Positioned(
                child: Text(
                  'Day 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                top: 50.0,
                left: 15.0,
              ),
              Positioned(
                child: Row(
                  children: [
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.flash_on,
                      size: 15.0,
                    ),
                    Text('Advanced'),
                  ],
                ),
                top: 95.0,
                left: 15.0,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '26',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        Text('Excercises')
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 0.5, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '21 min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        Text('Time')
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 0.5, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2000 Cal',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Burned')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15.0, bottom: 10.0, right: 15.0),
                  height: 80.0,
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/burpees.gif'),
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
                                  'Burpees',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0),
                                ),
                                Text('X 6'),
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
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Container(
          height: 55,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, SingleExcercise.id);
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
