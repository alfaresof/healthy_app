import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_app/features/type_two/home/view/widget/text_field_without_icon.dart';
import 'package:healthy_app/shared_component/circular_button.dart';

import '../../../../config/colors.dart';

class AddUser extends ConsumerStatefulWidget {
  const AddUser({super.key});

  @override
  ConsumerState createState() => _AddUserState();
}

class _AddUserState extends ConsumerState<AddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.green,
        shadowColor: Colors.white.withOpacity(0),
        title: Text(
          'Add User',
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
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFieldWithoutIcon(
                  controller: TextEditingController(), hintText: 'name'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(), hintText: 'password'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(),
                  hintText: 'confirm password'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(), hintText: 'Team code'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(), hintText: 'name'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(),
                  hintText: 'specializaion'),
              SizedBox(height: 20),
              TextFieldWithoutIcon(
                  controller: TextEditingController(),
                  hintText: 'phone number'),
              SizedBox(height: 20),
              CircularButton(title: 'Register', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
