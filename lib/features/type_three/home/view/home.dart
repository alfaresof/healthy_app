import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';
import 'package:healthy_app/shared_component/member_container.dart';

import '../../../../shared_component/health_care_container.dart';

class HomeTypeThree extends ConsumerStatefulWidget {
  const HomeTypeThree({super.key});

  @override
  ConsumerState createState() => _HomeTypeThreeState();
}

class _HomeTypeThreeState extends ConsumerState<HomeTypeThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white.withOpacity(0),
        shadowColor: Colors.white.withOpacity(0),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.density_medium,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/activities'),
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              HealthCareContainer(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 40,
                      child: FittedBox(
                        child: Text('Team Members'),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 40,
                      )),
                ],
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return MemberContainer(
                    name: 'ahmed',
                    phoneNumber: '0507857877',
                    role: 'doctor',
                    specialty: 'boss',
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
