import 'package:flutter/material.dart';
import 'radialprogress.dart';
import 'topbar.dart';
import 'date_time.dart';
import 'date_utils.dart';

class Pedometer extends StatefulWidget {
  const Pedometer({super.key});

  @override
  PedometerState createState() => PedometerState();
}

class PedometerState extends State<Pedometer>
    with SingleTickerProviderStateMixin {
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    const TopBar(),
                    Positioned(
                      top: 60.0,
                      left: 0.0,
                      right: 0.0,
                      child: Row(
                        children: <Widget>[
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
                                        letterSpacing: 1.2,
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
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 80.0),
                const RadialProgress(),
                const SizedBox(height: 20.0),
                const Center(child: Text("2 km  |  200 Cal")),
                const SizedBox(height: 22.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ), 
                      child: const Text("Start")
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ), 
                      child: const Text("Stop")
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ), 
                      child: const Text("Resume")
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}