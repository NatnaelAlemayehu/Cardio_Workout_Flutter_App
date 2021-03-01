import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleExcercise extends StatefulWidget {
  @override
  _SingleExcerciseState createState() => _SingleExcerciseState();
}

class _SingleExcerciseState extends State<SingleExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout'),
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/burpees.gif'),
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
                    'Burpees',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
                    'Each Side x3',
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
                    'X 6',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
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
            margin: EdgeInsets.only(
                top: 70.0, bottom: 20.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
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
                    )
                  ],
                ),
                // SizedBox(width: 150.0),
                Column(
                  children: [
                    Row(
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
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
