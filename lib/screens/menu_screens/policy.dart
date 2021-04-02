import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  static const String id = "policy";
  @override
  _PolicyState createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms Of Use"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text("Terms & Conditions", style: TextStyle(fontSize: 20),),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    "By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to . is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for. The Cardio app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the Cardio app won’t work properly or at all. The app does use third party services that declare their own Terms and Conditions. Link to Terms and Conditions of third party service providers used by the app Google Play Services Google Analytics for Firebase", textAlign: TextAlign.justify,),
              ),
              Text("Privacy Policy", style: TextStyle(fontSize: 20),),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("built the Cardio app as a Free app. This SERVICE is provided by at no cost and is intended for use as is. This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service. If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Cardio unless otherwise defined in this Privacy Policy.", textAlign: TextAlign.justify,),
              ),
              Text("Information Collection & Use", style: TextStyle(fontSize: 20),),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way. The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app", textAlign: TextAlign.justify,),
              ),
              Text("Log Data", style: TextStyle(fontSize: 20),),
              Container(
                padding: EdgeInsets.all(20),
                child: Text("I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.", textAlign: TextAlign.justify,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
