import 'package:flutter/material.dart';
import './signup.dart';
import '../menu_screens/sync_workout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login";
  const LoginPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'LogIn to Sync',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  child: Text('Login', style: TextStyle(fontSize: 20)),
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      UserCredential userCredential =
                          await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                      setState(() {
                        showSpinner = true;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SyncWorkout(),
                        ),
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        print('No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        print('Wrong password provided for that user.');
                      }
                    }
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('Don\'t not have account?'),
                    // ignore: deprecated_member_use
                    FlatButton(
                      textColor: Colors.purple,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
