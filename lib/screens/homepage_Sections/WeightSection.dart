import 'package:fitness_app/screens/Tracker/Weight%20Tracker/weight_tracker.dart';
import 'package:flutter/material.dart';

class WeightSection extends StatefulWidget {
  const WeightSection({super.key});

  @override
  State<WeightSection> createState() => _WeightSectionState();
}

class _WeightSectionState extends State<WeightSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [                    
            Text(
              "Weight",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.8),
            ),
          ],
        ),

        const SizedBox(
          height: 20,
        ),
        
        Material(
          elevation: 5,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Container(
            padding: const EdgeInsets.all(15.0),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 7, color: Colors.grey.shade200)),
                          child: const Icon(
                            Icons.monitor_weight_outlined,
                            color: Colors.purple,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: [
                            const Text(
                              "60.0 kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 21),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Lose 4.8 kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                FloatingActionButton.small(
                  elevation: 0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WeightTracker()
                        )
                    );                          
                  },
                  backgroundColor: Colors.purple.shade400,
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
        ),
      ],      
    );
  }
}