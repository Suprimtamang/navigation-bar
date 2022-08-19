import 'dart:async';
import 'package:flutter/material.dart';

//step 1 : creating stateful widget
class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  // step 2 adding time and duration variable
  Timer? countdownTimer;
  Duration myduration = Duration(days: 5);

  @override
  // void initState() {
  //   super.initState();
  // }

  // //step 3 adding a method to start , stop & reset timer

  // void startTimer() {
  //   countdownTimer = Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  // }

  // void stopTimer() {
  //   setState(() {
  //     countdownTimer!.cancel();
  //   });
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'StopWatch',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '00:00:00',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 400.0,
                  color: Colors.blue[300],
                ),
            

              ]
              
              ),
            
              
        ),
    ));
  }
}
