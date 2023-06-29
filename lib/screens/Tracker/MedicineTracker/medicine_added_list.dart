import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:fitness_app/screens/Tracker/MedicineTracker/medicine_tracker.dart';
import 'package:flutter/material.dart';

class MedicineAddedList extends StatefulWidget {
  const MedicineAddedList({super.key});

  @override
  State<MedicineAddedList> createState() => _MedicineAddedListState();
}

class _MedicineAddedListState extends State<MedicineAddedList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: const Text('Medicine List',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),  
        backgroundColor: Colors.purple,        
      ),

      body: Container(
        padding: const EdgeInsets.only(left:10.0, top: 10.0, right: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MedicineTracker()),
                    );  
                  },
                  icon: Icon(Icons.add_circle_outline, color: Colors.purple.shade300, size: 30),
                ),

                Text('Add Medicine',
                  style: TextStyle(
                    color: Colors.purple.shade300,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],            
            ),

            const SizedBox(height: 20),

            const MedicineAdded(medicineName: 'Paracetamol'),
            
            const SizedBox(height: 20),

            const MedicineAdded(medicineName: 'Crocin'), 
            
            const SizedBox(height: 20),

            const MedicineAdded(medicineName: 'Dolo 650mg'), 
            
            const SizedBox(height: 20),

            const MedicineAdded(medicineName: 'Citizine'),
            
          ],
        ),
      ),
    );
  }
}

class MedicineAdded extends StatelessWidget { 
  final String medicineName; 
  const MedicineAdded ({super.key, required this.medicineName}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/tracker/medicine/medicinesplash.png",
                    width: 50,
                    height: 50, 
                  ),

                  const SizedBox(width: 5.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(medicineName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(height: 3.0),

                      Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.purple.shade300, size: 13),
                          const SizedBox(width: 5.0),

                          Text('Scheduled',
                            style: TextStyle(
                              color: Colors.purple.shade300,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],                          
                  ),
                  
                ],
              ),                    

              PopupMenuButton(
                icon: Icon(Icons.more_vert, color: Colors.purple.shade300, size: 30),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text('Edit'),
                  ),
                  const PopupMenuItem(
                    child: Text('Delete'),
                  ),
                ],
              ),                    

            ],
          ),
        ],
      ),
    );
  }
} 