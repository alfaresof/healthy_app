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
    return CircularContiner(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.network(
                      'https://pps.whatsapp.net/v/t61.24694-24/315743513_138855875637767_7415184845908502282_n.jpg?ccb=11-4&oh=01_AdTDS-tlJFumCkX4nuDoci8z2gSvBuuK77rC3DENbjPtPQ&oe=6526C684&_nc_sid=000000&_nc_cat=103'),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleBlackText(text: name, fontSize: 25),
                  ContentBlackText(text: specialty),
                  ContentBlackText(text: phoneNumber),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TitleBlackText(
                text: role,
                fontSize: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
