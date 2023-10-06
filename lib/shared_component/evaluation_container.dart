import 'package:flutter/material.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

class EvaluationContainer extends StatelessWidget {
  const EvaluationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContiner(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              'data ' * 2,
              style: TextStyle(fontSize: 25),
            ),
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
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
        ));
  }
}
