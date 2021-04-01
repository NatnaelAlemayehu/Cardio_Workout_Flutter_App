import 'package:flutter/material.dart';
import './profile.dart';
import './report.dart';
import './sync_workout.dart';

class Menudrawer extends StatelessWidget {
  const Menudrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pushNamed(context, Profile.id);
            },
          ),
          ListTile(
            title: Text('Report'),
            onTap: () {
              Navigator.pop(context, Report.id);
            },
          ),
          ListTile(
            title: Text('Sync Workout Data'),
            onTap: () {
              Navigator.pop(context, SyncWorkout.id);
            },
          ),
        ],
      ),
    );
  }
}
