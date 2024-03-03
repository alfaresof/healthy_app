import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/features/type_two/home/view/widget/health_care_container_summary.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';
import 'package:healthy_app/shared_component/member_container.dart';

import '../../../../shared_component/health_care_container.dart';

class HomeTypeOne extends ConsumerStatefulWidget {
  const HomeTypeOne({super.key});

  @override
  ConsumerState createState() => _HomeTypeThreeState();
}

class _HomeTypeThreeState extends ConsumerState<HomeTypeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        title: Text(
          'zones',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.density_medium,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/domain_one'),
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
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CircularContiner(
                    onTap: () => Navigator.pushNamed(context, '/item'),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    width: 100,
                    height: 100,
                    borderColor: AppColors.green,
                    child: const Text(
                      'Riyadh',
                      style: TextStyle(
                        fontSize: 25,
                        color: AppColors.green,
                      ),
                      textAlign: TextAlign.center,
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
