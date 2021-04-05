import 'package:flutter/material.dart';
import '../../classes/widget_generators/list_card_generator.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class ExcerciseList extends StatefulWidget {
  static const String id = "excercise_list";
  //final ScreenArguments args = ModalRoute.of(context).settings.arguments;
  final String level;
  final bool animation;

  const ExcerciseList({Key key, this.level, this.animation = false})
      : super(key: key);

  @override
  _ExcerciseListState createState() => _ExcerciseListState();
}

class _ExcerciseListState extends State<ExcerciseList> {
  ConfettiController _controllerCenterRight;
  ConfettiController _controllerCenterLeft;

  @override
  void initState() {
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 1));
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 1));
    super.initState();
    if (widget.animation) {
      _controllerCenterRight.play();
      _controllerCenterLeft.play();
    }
  }

  @override
  void dispose() {
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.level} Level'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
          child: Stack(
            children: [
              Column(
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
              Align(
                alignment: Alignment.centerRight,
                child: ConfettiWidget(
                  confettiController: _controllerCenterRight,
                  blastDirection: pi, // radial value - LEFT
                  particleDrag: 0.05, // apply drag to the confetti
                  emissionFrequency: 0.05, // how often it should emit
                  numberOfParticles: 20, // number of particles to emit
                  gravity: 0.05, // gravity - or fall speed
                  shouldLoop: false,
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink
                  ], // manually specify the colors to be used
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ConfettiWidget(
                  confettiController: _controllerCenterLeft,
                  blastDirection: 0, // radial value - RIGHT
                  particleDrag: 0.05, // apply drag to the confetti
                  emissionFrequency: 0.05, // how often it should emit
                  numberOfParticles: 20, // number of particles to emit
                  gravity: 0.05, // gravity - or fall speed
                  shouldLoop: false,
                  colors: const [Colors.green, Colors.blue, Colors.pink],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
