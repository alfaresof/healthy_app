import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';

import '../../../../shared_component/circular_continer.dart';

class ActionPlan extends ConsumerStatefulWidget {
  const ActionPlan({super.key});

  @override
  ConsumerState createState() => _ActionPlanState();
}

class _ActionPlanState extends ConsumerState<ActionPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        centerTitle: true,
        title: const Text(
          'Action Plan',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CircularContiner(
                    onTap: () => Navigator.pushNamed(context, '/evaluation'),
                    padding: EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '''Completion of patients' health records in HIS, Wasfaty program...etc''',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
