import 'package:fitness_app/screens/Tracker/SleepTracker/sleep_tracker.dart';
import 'package:flutter/material.dart';

import 'date_time.dart';
import 'date_utils.dart';


  
class SleepInfo extends StatefulWidget {
  const SleepInfo({super.key});

  @override
  State<SleepInfo> createState() => SleepInfoState();
}

class SleepInfoState extends State<SleepInfo> with SingleTickerProviderStateMixin {
  late DateTimeController _dateTimeController;
  late AnimationController _iconAnimationController;

  @override
  void initState() {
    _dateTimeController = DateTimeController();
    _iconAnimationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    super.initState();
  }

  @override
  void dispose() {
    _dateTimeController.dispose();
    _iconAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 69, 12, 104),             
      body: Stack(
        fit: StackFit.expand,
        children: [ 
          const Image(
            image: AssetImage("assets/images/tracker/sleep/sleepinfobg.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              const SizedBox(height: 50.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SleepTracker()),
                          );
                        },
                      ),

                      const Text(
                        "Sleep Tracker",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ],
                  ),

                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                    },
                  ),
                ],            
              ),

              const SizedBox(height: 30.0),

              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      _dateTimeController.subtractDate();
                    },
                  ),

                  StreamBuilder(
                    stream: _dateTimeController.dateStream,
                    initialData: _dateTimeController.selectedDate,
                    builder: (context, snapshot) {
                      return Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              formatterDayOfWeek
                                  .format(snapshot.data as DateTime),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Colors.white,
                                  letterSpacing: 1.2),
                            ),
                            Text(
                              formatterDate
                                  .format(snapshot.data as DateTime),
                              style: const TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                letterSpacing: 1.3,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      _dateTimeController.addDate();
                    },
                  )
                ],
              )

            ],
          ),

        ],
      ),
        
    );  
  }
}    