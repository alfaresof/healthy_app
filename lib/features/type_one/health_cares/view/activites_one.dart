import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../config/colors.dart';

class ActivitesOne extends ConsumerStatefulWidget {
  const ActivitesOne({super.key});

  @override
  ConsumerState createState() => _ActivitesTwoState();
}

class _ActivitesTwoState extends ConsumerState<ActivitesOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        title: Text(
          'Activites',
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
            onPressed: () => Navigator.pushNamed(context, '/add_user_one'),
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
            Text(
              'Primary health care name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircularContiner(
                onTap: () => Navigator.pushNamed(context, '/domain'),
                borderColor: AppColors.green,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        bottomLeft: Radius.circular(13),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        color: AppColors.green,
                        child: Column(
                          children: [
                            Text(
                              'Start Date',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '10-12-2023',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Start Date',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '10-12-2023',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 6),
                          width: 220,
                          child: Text(
                            'data tad atsad tst sdtsdtsadts td',
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Assigned to',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'Person Name',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 100,
                              child: CircularPercentIndicator(
                                radius: 25.0,
                                lineWidth: 4.0,
                                percent: 0.90,
                                center: Text("90%"),
                                progressColor: AppColors.green,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
