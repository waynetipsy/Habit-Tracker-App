import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitTile extends StatelessWidget {
   final String habitName;

  const HabitTile({Key? key, required this.habitName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                       height: 60,
                       color: Colors.red,
                       child: Stack(children: [
                            CircularPercentIndicator(
                              radius: 40,
                              percent: 0.7,
                    ),
                        ],
                       ),
                      ),
                     // progress circle
                   const SizedBox(width: 20),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // habit name
                      Text(
                        habitName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                       ),
                      ),
                 const  SizedBox(height: 4),
                      // progress
                const  Text('2:00 / 10 = 20%',
                   style: TextStyle(color: Colors.grey),
                     ),
                    ],
                   ),

                  ],
                  ),
                 
                 const Icon(Icons.settings)
                ],
              ),
            ),
    );
  }
}