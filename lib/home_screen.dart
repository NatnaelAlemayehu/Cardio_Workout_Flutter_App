import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fitness_screen/excercise_list.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardio'),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cardio Exercise'),
              decoration: BoxDecoration(
                color: Color(0xff9C27B0),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Rate the app'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        //crossAxisCount: 1,
        // padding: EdgeInsets.all(16.0),
        // childAspectRatio: 2,
        // crossAxisSpacing: 10.0,
        // mainAxisSpacing: 10.0,
        // children: <Widget>[
        //   myGridItems(
        //     "Beginner",
        //     "https://cdn.muscleandstrength.com/sites/default/files/field/feature-image/workout/calisthenics_for_lifters_-_800x500.jpg",
        //   ),
        //   myGridItems(
        //     "Intermediate",
        //     "http://no-filter.in/wp-content/uploads/2020/08/weightless-workout.jpg",
        //   ),
        //   myGridItems(
        //     "Advanced",
        //     "https://artimg.gympik.com/articles/wp-content/uploads/2018/10/shutterstock_644395591.jpg",
        //   ),
        // ],
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ExcerciseList.id);
              },
              child: Stack(
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      // borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/home_screen1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                ".",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                  child: Icon(
                                FontAwesomeIcons.heartBroken,
                                color: Colors.white,
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Beginner",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ExcerciseList.id);
              },
              child: Stack(
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      // borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/home_screen2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                ".",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                  child: Icon(
                                FontAwesomeIcons.heartBroken,
                                color: Colors.white,
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Intermediate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ExcerciseList.id);
              },
              child: Stack(
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      // borderRadius: BorderRadius.circular(24.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/home_screen3.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  child: Text(
                                ".",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                  child: Icon(
                                FontAwesomeIcons.heartBroken,
                                color: Colors.white,
                              )),
                              SizedBox(width: 10.0),
                              Container(
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Advanced",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
