import 'package:flutter/material.dart';
import './profile.dart';
import './report.dart';
import '../login_screens/login.dart';
import './feed.dart';
import './policy.dart';
import './rate.dart';
import './settings.dart';
import 'package:firebase_core/firebase_core.dart';

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
            child: Text(
              'Cardio Exercise',
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/cardioCover.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, Profile.id);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, Settings.id);
            },
          ),
          // ListTile(
          //   title: Text('Report'),
          //   onTap: () {
          //     Navigator.pushNamed(context, Report.id);
          //   },
          // ),
          ListTile(
            title: Text('Sync Workout Data'),
            onTap: () async {
              WidgetsFlutterBinding.ensureInitialized();
              await Firebase.initializeApp();
              Navigator.pushNamed(context, LoginPage.id);
            },
          ),
          // ListTile(
          //   title: Text('Feed'),
          //   onTap: () {
          //     Navigator.pushNamed(context, Feed.id);
          //   },
          // ),
          // ListTile(
          //   title: Text('Policy'),
          //   onTap: () {
          //     Navigator.pushNamed(context, Policy.id);
          //   },
          // ),
          // ListTile(
          //   title: Text('Rate Us'),
          //   onTap: () {
          //     Navigator.pushNamed(context, Rate.id);
          //   },
          // ),
        ],
      ),
    );
  }
}
