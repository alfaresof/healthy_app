import 'package:flutter/material.dart';
import 'package:healthy_app/shared_component/circular_continer.dart';
import 'package:healthy_app/shared_component/title_black_text.dart';

import 'content_black_text.dart';

class MemberContainer extends StatelessWidget {
  final String name;
  final String specialty;
  final String role;
  final String phoneNumber;

  const MemberContainer(
      {super.key,
      required this.name,
      required this.specialty,
      required this.role,
      required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12).copyWith(top: 100),
          child: CircularContiner(
            padding: const EdgeInsets.all(12).copyWith(top: 40),
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBlackText(text: 'Name'),
                    TitleBlackText(text: 'Specialty'),
                    TitleBlackText(text: 'Role'),
                    TitleBlackText(text: 'Phone Number'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentBlackText(text: name),
                    ContentBlackText(text: specialty),
                    ContentBlackText(text: role),
                    ContentBlackText(text: phoneNumber),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: CircleAvatar(
            radius: 40,
            child: ClipOval(
              child: Image.network(
                  'https://pps.whatsapp.net/v/t61.24694-24/315743513_138855875637767_7415184845908502282_n.jpg?ccb=11-4&oh=01_AdTDS-tlJFumCkX4nuDoci8z2gSvBuuK77rC3DENbjPtPQ&oe=6526C684&_nc_sid=000000&_nc_cat=103'),
            ),
          ),
        ),
      ],
    );
  }
}
