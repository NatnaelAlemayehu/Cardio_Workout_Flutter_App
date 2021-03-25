import 'package:flutter/material.dart';
import '../../widget_generators/list_card_generator.dart';

class ExcerciseList extends StatefulWidget {
  static const String id = "excercise_list";
  //final ScreenArguments args = ModalRoute.of(context).settings.arguments;
  final String level;

  const ExcerciseList({
    Key key,
    this.level,
  }) : super(key: key);

  @override
  _ExcerciseListState createState() => _ExcerciseListState();
}

class _ExcerciseListState extends State<ExcerciseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.level} Level'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       '${widget.level} Level',
              //       style:
              //           TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              //     ),
              //     Column(
              //       children: [
              //         Row(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.only(right: 10.0),
              //               child: Icon(Icons.ac_unit),
              //             ),
              //             Icon(Icons.account_circle)
              //           ],
              //         )
              //       ],
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/excercise_list.jpg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: CardGenerator(level: widget.level)
                      .generateCardListWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
