import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/colors.dart';
import '../../../../shared_component/circular_continer.dart';
import '../../../../shared_component/evaluation_container.dart';
import '../../../auth/view/widget/custom_text_field.dart';

class AddItem extends ConsumerStatefulWidget {
  const AddItem({super.key});

  @override
  ConsumerState createState() => _AddItemState();
}

class _AddItemState extends ConsumerState<AddItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        centerTitle: true,
        title: const Text(
          'add item',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            CircularContiner(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              child: Text(
                'details' * 20,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Action Plan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'what evidence you need ?',
            ),
            SizedBox(height: 20),
            EvaluationContainer(),
            EvaluationContainer(),
            EvaluationContainer(),
          ],
        ),
      ),
    );
  }
}
