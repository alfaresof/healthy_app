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
      backgroundColor: AppColors.pink,
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'enter you\'r name',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'enter you\'r password',
          ),
          SizedBox(
            height: 30,
          ),
          CircularButton(
            title: 'next',
            onPressed: () => Navigator.pushNamed(context, '/home_three'),
          )
        ],
      )),
    );
  }
}
