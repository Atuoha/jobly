import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../constants/color.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome home',
              style: TextStyle(
                color: kColor3,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            Text(
              'Ujunwa Peace',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            )
          ],
        ),
        Row(
          children: [
            Transform.rotate(
              angle: -40 * pi / 180,
              child: Badge(
                position: const BadgePosition(
                  start: 20,
                  isCenter: false,
                  bottom: 20,
                ),
                badgeContent: const Text(
                  '1',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
                badgeColor: Colors.red,
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(width: 13),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'assets/images/user2.jpg',
              ),
            ),
          ],
        )
      ],
    );
  }
}
