import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/colors.dart';
import '../../../type_two/home/view/widget/health_care_container_summary.dart';

class HealthCareOne extends ConsumerStatefulWidget {
  const HealthCareOne({super.key});

  @override
  ConsumerState createState() => _HealthCareOneState();
}

class _HealthCareOneState extends ConsumerState<HealthCareOne> {
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
            onPressed: () => Navigator.pushNamed(context, '/activities_one'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/ActivitesOne'),
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                  Text(
                    'may',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/add_user'),
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ],
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
