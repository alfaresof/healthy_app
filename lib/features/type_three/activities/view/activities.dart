import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

class Activities extends ConsumerStatefulWidget {
  const Activities({super.key});

  @override
  ConsumerState createState() => _ActivitiesState();
}

class _ActivitiesState extends ConsumerState<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        centerTitle: true,
        title: const Text(
          'Activities',
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
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CircularContiner(
                    onTap: () => Navigator.pushNamed(context, '/details'),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    width: 100,
                    height: 100,
                    borderColor: AppColors.green,
                    child: const Text(
                      'TPC Huddle Metting',
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
