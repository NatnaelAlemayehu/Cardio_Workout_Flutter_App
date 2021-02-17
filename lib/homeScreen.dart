import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}
          ),
          title: Text("Cardio"),
          actions: <Widget>[
            IconButton(icon: Icon(
                FontAwesomeIcons.calendarAlt), onPressed: () {

            }),
          ],
        ),
        body: GridView.count(
        crossAxisCount: 1,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 2.5,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          myGridItems("Beginner", "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/woman-exercising-planks-at-home-in-los-angeles-royalty-free-image-1587667600.jpg", (0xFFb765d3), (0xffffffff) ),
          myGridItems("Intermediate", "https://www.ymcasv.org/sites/0702-openy-ymcasv.org/files/styles/feature_card/public/2020-08/jonathan-borba-lrQPTQs7nQQ-unsplash.jpg?itok=0Sw8zgO6", (0xffffffff), (0x00000000) ),
          myGridItems("Advanced", "https://artimg.gympik.com/articles/wp-content/uploads/2018/10/shutterstock_644395591.jpg", (0xffffffff), (0xffff0000)),
          ],
        )
    );
  }


  Widget myGridItems(String gridName, String gridimage, int color1,
      int color2) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        gradient: new LinearGradient(
          colors: [
            Color(color1),
            Color(color2)
          ],
          begin: Alignment.centerLeft,
          end: new Alignment(1.0, 1.0),
        ),
      ),
      child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.3,
              child: Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                  image: new NetworkImage(
                    gridimage),
                  fit: BoxFit.fill,
                  )
                )
                ),
              ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Container(child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Container(child: Text("============", style: TextStyle(color: Colors.white, fontSize: 16),)),
                    SizedBox(width:10.0),
                    Container(child: Icon(FontAwesomeIcons.anchor, color: Colors.white,)),
                    SizedBox(width:10.0),
                    Container(child: Text("+++++++++++++", style: TextStyle(color: Colors.white, fontSize: 16),)),
                    ],
                  )),
                   SizedBox(height:10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(gridName,style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.bold)),
                )
                ],
              ),
            )
          ],
      )
    );
  }
}
