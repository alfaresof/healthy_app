import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/features/auth/view/widget/custom_text_field.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

import '../../../../config/colors.dart';

class Item extends ConsumerStatefulWidget {
  const Item({super.key});

  @override
  ConsumerState createState() => _ItemState();
}

class _ItemState extends ConsumerState<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        centerTitle: true,
        title: const Text(
          'Item',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/add_item'),
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
                hintText: 'what evidence you need ?')
          ],
        ),
      ),
    );
  }
}
