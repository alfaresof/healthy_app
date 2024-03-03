import 'package:flutter/material.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/features/type_one/home/view/domain.dart';
import 'package:healthy_app/features/type_three/activities/view/activities.dart';
import 'package:healthy_app/features/type_three/activities/view/activities_details.dart';
import 'package:healthy_app/features/type_three/home/view/home.dart';
import 'package:healthy_app/features/type_three/plan/view/action_plan.dart';
import 'package:healthy_app/features/type_two/activites/view/domain.dart';
import 'package:healthy_app/features/type_two/home/view/add_user.dart';
import 'package:healthy_app/features/type_two/items/view/add_item.dart';
import 'package:healthy_app/features/type_two/items/view/item_details.dart';

import 'features/auth/view/auth.dart';
import 'features/type_one/health_cares/view/activites_one.dart';
import 'features/type_one/health_cares/view/health_care.dart';
import 'features/type_one/home/view/home.dart';
import 'features/type_three/activities/view/evaluation.dart';
import 'features/type_two/activites/view/activites_two.dart';
import 'features/type_two/home/view/home.dart';

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
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Auth(),
        '/home_three': (context) => const HomeTypeThree(),
        '/home_two': (context) => const HomeTypeTwo(),
        '/add_user': (context) => const AddUser(),
        '/domain': (context) => const Domain(),
        '/item': (context) => const Item(),
        '/home_one': (context) => const HomeTypeOne(),
        '/domain_one': (context) => const DomainOne(),
        '/activities_one': (context) => const ActivitesOne(),
        '/add_user_one': (context) => const AddUser(),
        '/health_care_one': (context) => const HealthCareOne(),
        '/add_item': (context) => const AddItem(),
        '/activities_two': (context) => const ActivitesTwo(),
        '/activities': (context) => const Activities(),
        '/details': (context) => const ActivitiesDetails(),
        '/evaluation': (context) => const Evaluation(),
        '/plan': (context) => const ActionPlan(),
      },
    );
  }
}
