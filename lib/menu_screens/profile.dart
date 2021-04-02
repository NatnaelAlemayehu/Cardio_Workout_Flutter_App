import 'dart:io';

import 'package:fitness_screen/screens/main_app_screens/home_screen.dart';
import 'package:fitness_screen/screens/menu_screens/settings.dart';
import 'package:fitness_screen/screens/menu_screens/terms_of_use.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  static const String id = "profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.purple,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Settings()));
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: _imageFile == null? AssetImage('assets/images/workout.jpg'):FileImage(File(_imageFile.path))),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.purple,
                          ),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: ((builder) => bottomSheet()),
                              );
                            },
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: 35,
              ),
              buildTextField("Full Name", "Dor Alex", false),
              buildTextField("E-mail", "alexd@gmail.com", false),
              buildTextField("Password", "********", true),
              buildTextField("Location", "TLV, Israel", false),
              SizedBox(
                height: 35,
              ),
              TermsOfUse(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                    },
                    child: Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                    },
                    color: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(children: <Widget>[
        Text("Choose Profile Photo",
        style: TextStyle(
          fontSize: 20.0,
        ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: (){
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: (){
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ],
        )
      ]),
    );
  }
void takePhoto(ImageSource source) async{
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
}

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
