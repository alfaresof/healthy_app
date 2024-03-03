import 'package:flutter/material.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

class EvaluationContainer extends StatelessWidget {
  const EvaluationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'data ' * 2,
            style: TextStyle(fontSize: 25),
          ),
          Row(
            children: [
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  fillColor: MaterialStatePropertyAll(AppColors.green),
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (val) {},
                ),
              ),
              Text(
                'yes',
                style: TextStyle(fontSize: 20),
              ),
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  fillColor: MaterialStatePropertyAll(AppColors.green),
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (val) {},
                ),
              ),
              Text(
                'yes',
                style: TextStyle(fontSize: 20),
              ),
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  fillColor: MaterialStatePropertyAll(AppColors.green),
                  shape: CircleBorder(),
                  value: true,
                  onChanged: (val) {},
                ),
              ),
              Text(
                'yes',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
