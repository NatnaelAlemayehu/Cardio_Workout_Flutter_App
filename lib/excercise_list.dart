import 'package:flutter/material.dart';
import 'package:fitness_screen/daily_excercise.dart';

class ExcerciseList extends StatefulWidget {
  static const String id = "excercise_list";

  @override
  _ExcerciseListState createState() => _ExcerciseListState();
}

class _ExcerciseListState extends State<ExcerciseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Excercise List'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beginners Level',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(Icons.ac_unit),
                          ),
                          Icon(Icons.account_circle)
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/excercise_list.jpg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 1',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 2',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 3',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 4',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 5',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 6',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 7',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 8',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 9',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 10',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 11',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 12',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 13',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 14',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blue[100],
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushNamed(context, DailyExcercise.id);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Day 15',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text('18 Excercises'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
