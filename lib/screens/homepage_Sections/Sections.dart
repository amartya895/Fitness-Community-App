// ignore_for_file: unused_field

import 'package:fitness_app/screens/homepage_Sections/Advertisement.dart';
import 'package:fitness_app/screens/homepage_Sections/DiscoverSection.dart';
import 'package:fitness_app/screens/homepage_Sections/NutriSection.dart';
import 'package:fitness_app/screens/homepage_Sections/TrackerSection.dart';
import 'package:fitness_app/screens/homepage_Sections/WeightSection.dart';
import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  const Sections({super.key});

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  final int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.waving_hand,
              color: Color.fromARGB(255, 99, 73, 104)),
          onPressed: () {},
        ),
        title: const Text(
          'Welcome, Fitto',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.purple),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.purple),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Advertisement(),
                SizedBox(height: 10),
                NutriSection(),
                SizedBox(height: 20),
                WeightSection(),
                SizedBox(height: 30),
                TrackerSection(),
                SizedBox(height: 40),
                DiscoverSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//start of homepage
class overlapTop extends StatelessWidget {
  const overlapTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: 100,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.dinner_dining,
                size: 40,
              ),
              Text(
                "Eat upto 1,250 calories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Icon(
                Icons.add_box,
                size: 40,
              )
            ],
          )),
    );
  }
}
