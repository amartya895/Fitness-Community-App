import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_added_list.dart';
import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:flutter/material.dart';

class SaveSplash extends StatefulWidget {
  const SaveSplash({super.key});

  @override
  _SaveSplashState createState() => _SaveSplashState();
}

class _SaveSplashState extends State<SaveSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 200.0,
              height: 200.0,
              image: AssetImage("assets/images/tracker/medicine/medicinesplash.png"),
            ),

            const Text(
              'Jtfv',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'was added successfully',
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 40),            

            SizedBox(
              width: 190,
              height: 40,
              child: ElevatedButton(  
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MedicineAddedList()),
                  );
                },
                style: ElevatedButton.styleFrom(                
                  backgroundColor: Colors.purple.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Track Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),  
            ),

            const SizedBox(height: 20),          

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MedicineTracker()),
                );
              },
              child: const Text(
                'Want to add more?',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 17,
                ),
              ),
            ),

            const SizedBox(height: 20),          

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text(
                'GO TO HOME',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 17,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}