// ignore_for_file: unused_field

import 'package:fitness_app/screens/Homepage_Sections/homepage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeightTracker extends StatefulWidget {
  const WeightTracker({super.key});

  @override
  State<WeightTracker> createState() => WeightTrackerState();
}

class WeightTrackerState extends State<WeightTracker> {
  int _selectedOption = 1;

  @override
  void initState() {
    super.initState();
    _selectedOption = 1; // or whatever the default option should be
  }

  final List<WeightData> weightData = <WeightData>[
    WeightData(DateTime(2022, 2, 1), 75),
    WeightData(DateTime(2022, 2, 10), 74.5),
    WeightData(DateTime(2022, 2, 20), 73),
    WeightData(DateTime(2022, 3, 1), 72),
    WeightData(DateTime(2022, 3, 10), 72.5),
    WeightData(DateTime(2022, 3, 20), 71),
    WeightData(DateTime(2022, 4, 1), 70.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back,
                              color: Colors.black87),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                        ),
                        const Text(
                          'Weight Tracker',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                          ),
                        ),
                        PopupMenuButton(
                          icon: const Icon(Icons.more_vert,
                              color: Colors.black87, size: 30),
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: Text('Change unit to Pounds'),
                            ),
                            const PopupMenuItem(
                              child: Text('Weight Reminder'),
                            ),
                            const PopupMenuItem(
                              child: Text('Send Feedback'),
                            ),
                            const PopupMenuItem(
                              child: Text('Refresh'),
                            ),
                            const PopupMenuItem(
                              child: Text('Help'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  width: 7, color: Colors.grey.shade200)),
                          child: const Icon(
                            Icons.monitor_weight,
                            color: Colors.purple,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 27),
                        Column(
                          children: [
                            const Text(
                              "Lose 3 kg",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 17),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 weeks remaining",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                        const SizedBox(width: 75),
                        IconButton(
                          icon: const Icon(Icons.edit,
                              color: Colors.purple, size: 25),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RadioDialog()),
                            );
                          },
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      child: SfCartesianChart(
                        plotAreaBorderColor: Colors.transparent,
                        primaryXAxis: DateTimeAxis(
                          majorGridLines: const MajorGridLines(width: 0),
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                          intervalType: DateTimeIntervalType.days,
                        ),
                        primaryYAxis: NumericAxis(
                          majorGridLines: const MajorGridLines(width: 0),
                          axisLine: const AxisLine(width: 0),
                          labelFormat: '{value}kg',
                        ),
                        series: <ChartSeries>[
                          SplineSeries<WeightData, DateTime>(
                            dataSource: weightData,
                            xValueMapper: (WeightData data, _) => data.date,
                            yValueMapper: (WeightData data, _) => data.weight,
                            color: Colors.purple,
                            markerSettings: const MarkerSettings(
                              isVisible: true,
                              color: Colors.white,
                              borderColor: Colors.purple,
                            ),
                            dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelAlignment: ChartDataLabelAlignment.top,
                              textStyle: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 20),

                        const Text(
                          "Diet Suggestions",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),

                        const SizedBox(width: 20),

                        //diet char for the user
                        Container(
                          child: const Icon(
                            Icons.food_bank,
                            color: Colors.purple,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const DietSuggestionCard(
                      title: 'Plant-Based Diet',
                      description:
                          'A plant-based diet emphasizes foods like fruits, vegetables, whole grains, legumes, nuts, and seeds. It limits or excludes animal products like meat, dairy, and eggs.',
                      imageUrl:
                          'https://tamil.samayam.com/thumb/66204197/66204197.jpg?imgsize=89137&width=540&height=405&resizemode=75',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeightData {
  WeightData(this.date, this.weight);
  final DateTime date;
  final double weight;
}

//use of radio button in dialog box
class RadioDialog extends StatefulWidget {
  const RadioDialog({Key? key}) : super(key: key);

  @override
  RadioDialogState createState() => RadioDialogState();
}

class RadioDialogState extends State<RadioDialog> {
  int _selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Goal Settings'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RadioListTile(
            title: const Text("Update Goal"),
            value: 1,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          RadioListTile(
            title: const Text("Reset Goal"),
            value: 2,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

//diet char for the user starts
class DietSuggestionCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DietSuggestionCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 245,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Learn More',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
