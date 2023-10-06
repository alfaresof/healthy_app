import 'package:flutter/material.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

class HealthCareContainer extends StatelessWidget {
  const HealthCareContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContiner(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12).copyWith(left: 20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Primary Health Care Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Team Based Care Code',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Health Zone Name',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
