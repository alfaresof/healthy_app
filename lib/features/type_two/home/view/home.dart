import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/features/type_two/home/view/widget/health_care_container_summary.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';
import 'package:healthy_app/shared_component/member_container.dart';

import '../../../../shared_component/health_care_container.dart';

class HomeTypeTwo extends ConsumerStatefulWidget {
  const HomeTypeTwo({super.key});

  @override
  ConsumerState createState() => _HomeTypeThreeState();
}

class _HomeTypeThreeState extends ConsumerState<HomeTypeTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        title: Text(
          'Primary Health Care (Middle Zone)',
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
            onPressed: () => Navigator.pushNamed(context, '/activities_two'),
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/add_user'),
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return HealthCareContainerSummary();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
