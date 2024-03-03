import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';

import '../../../../shared_component/circular_continer.dart';
import '../../../../shared_component/evaluation_container.dart';

class Evaluation extends ConsumerStatefulWidget {
  const Evaluation({super.key});

  @override
  ConsumerState createState() => _EvaluationState();
}

class _EvaluationState extends ConsumerState<Evaluation> {
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
            onPressed: () => Navigator.pushNamed(context, '/plan'),
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              CircularContiner(
                onTap: () => Navigator.pushNamed(context, '/evaluation'),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                width: double.infinity,
                height: 100,
                child: const Text(
                  'TPC Huddle Metting',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Evidence of Compliance',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
              CircularContiner(
                onTap: () => Navigator.pushNamed(context, '/evaluation'),
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                width: double.infinity,
                height: 100,
                child: const Text(
                  'TPC Huddle Metting',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return EvaluationContainer();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
