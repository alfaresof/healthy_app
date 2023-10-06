import 'package:flutter/material.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/features/type_three/activities/view/activities.dart';
import 'package:healthy_app/features/type_three/activities/view/activities_details.dart';
import 'package:healthy_app/features/type_three/home/view/home.dart';
import 'package:healthy_app/features/type_three/plan/view/action_plan.dart';

import 'features/auth/view/auth.dart';
import 'features/type_three/activities/view/evaluation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.pink,
        fontFamily: 'inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Auth(),
        '/home_three': (context) => const HomeTypeThree(),
        '/activities': (context) => const Activities(),
        '/details': (context) => const ActivitiesDetails(),
        '/evaluation': (context) => const Evaluation(),
        '/plan': (context) => const ActionPlan(),
      },
    );
  }
}
