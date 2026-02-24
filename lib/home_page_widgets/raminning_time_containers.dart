import 'dart:async';
import 'package:flutter/material.dart';
import 'package:work_design/utils/colors.dart';

class CircularCountdown extends StatefulWidget {
  const CircularCountdown({Key? key}) : super(key: key);

  @override
  _CircularCountdownState createState() => _CircularCountdownState();
}

class _CircularCountdownState extends State<CircularCountdown> {
  late int hours, minutes, seconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    hours = 7;
    minutes = 45;
    seconds = 59;

    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        if (minutes > 0) {
          setState(() {
            minutes--;
            seconds = 59;
          });
        } else {
          if (hours > 0) {
            setState(() {
              hours--;
              minutes = 59;
              seconds = 59;
            });
          } else {
            timer.cancel();
          }
        }
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TimeContainer(hours, 'Hours'),
        TimeContainer(minutes, 'Minutes'),
        TimeContainer(seconds, 'Seconds'),
      ],
    );
  }

  Widget TimeContainer(int timeValue, String label) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
          child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: bgColor2, width: 1.5)
                  ),
                  child: Column(
                    children: [
                      Text("$timeValue",style: const TextStyle(
                        fontFamily: 'poppins',color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w600
                      ),),Text("$label",style: const TextStyle(
                        fontFamily: 'poppins',color: Colors.black87,fontSize: 5,fontWeight: FontWeight.w400,
                      ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ),
      ],
    );
  }
}
