import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fitness_screen/excercise_list.dart';

class HomeScreen extends StatefulWidget {
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
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          // padding: EdgeInsets.all(16.0),
          childAspectRatio: 2.0,
          // crossAxisSpacing: 10.0,
          // mainAxisSpacing: 10.0,
          children: <Widget>[
            myGridItems(
              "Beginner",
              "https://cdn.muscleandstrength.com/sites/default/files/field/feature-image/workout/calisthenics_for_lifters_-_800x500.jpg",
            ),
            myGridItems(
              "Intermediate",
              "http://no-filter.in/wp-content/uploads/2020/08/weightless-workout.jpg",
            ),
            myGridItems(
              "Advanced",
              "https://artimg.gympik.com/articles/wp-content/uploads/2018/10/shutterstock_644395591.jpg",
            ),
          ],
        ));
  }

  Widget myGridItems(
    String gridName,
    String gridimage,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => ExcerciseList()));
      },
      child: Container(
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(24.0),
              // gradient: new LinearGradient(
              //   colors: [
              //     // Color(color1),
              //     // Color(color2)
              //   ],
              //   begin: Alignment.centerLeft,
              //   end: new Alignment(1.0, 1.0),
              // ),
              ),
          child: Stack(
            children: <Widget>[
              Opacity(
                opacity: 1.0,
                child: Container(
                    decoration: new BoxDecoration(
                        // borderRadius: BorderRadius.circular(24.0),
                        image: DecorationImage(
                  image: new NetworkImage(gridimage),
                  fit: BoxFit.fill,
                ))),
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
                            style: TextStyle(color: Colors.white, fontSize: 26),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 26),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(gridName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
