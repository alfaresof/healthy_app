import 'package:flutter/material.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

class HealthCareContainerSummary extends StatelessWidget {
  const HealthCareContainerSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContiner(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Text(
              'Care Code',
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ));
  }
}
