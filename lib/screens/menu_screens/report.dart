import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  static const String id = "report";

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [Text('hi')],
        ),
      ),
    );
  }
}
