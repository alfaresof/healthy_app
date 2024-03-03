import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/config/colors.dart';
import 'package:healthy_app/features/auth/view/widget/custom_text_field.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';

import '../../../shared_component/circular_button.dart';

class Auth extends ConsumerStatefulWidget {
  const Auth({super.key});

  @override
  ConsumerState createState() => _AuthState();
}

class _AuthState extends ConsumerState<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Column(
        children: [
          const SizedBox(height: 150),
          Image.asset('assets/photos/vector.png'),
          const SizedBox(height: 50),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 40,
              color: AppColors.green,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'enter you\'r name',
            svgPath: 'assets/photos/message.svg',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'enter you\'r password',
            svgPath: 'assets/photos/lock.svg',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: CircularButton(
              title: 'next',
              width: double.infinity,
              onPressed: () => Navigator.pushNamed(context, '/home_three'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: CircularButton(
              title: 'type 2',
              width: double.infinity,
              onPressed: () => Navigator.pushNamed(context, '/home_two'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: CircularButton(
              title: 'type 1',
              width: double.infinity,
              onPressed: () => Navigator.pushNamed(context, '/home_one'),
            ),
          ),
        ],
      )),
    );
  }
}
