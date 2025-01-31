import 'package:flutter/material.dart';

import 'package:adstack/Config/responsive.dart';

class HeaderActionItems extends StatelessWidget {
  const HeaderActionItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [



        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.calendar_today_rounded,
            // Slightly smaller size
            size: Responsive.isDesktop(context) ? 25 : 18,
          ),
        ),

        const SizedBox(width: 10),

        Stack(
          clipBehavior: Clip.none,
          children: [
            const Positioned(
              top: 8,
              right: 7,
              child: CircleAvatar(
                radius: 3,
                backgroundColor: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                size: Responsive.isDesktop(context) ? 25 : 18,
              ),
            ),
          ],
        ),


        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.power_settings_new_outlined,
            size: Responsive.isDesktop(context) ? 25 : 18,
          ),
        ),

        const SizedBox(width: 50),

        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: Responsive.isDesktop(context) ? 22 : 17,
                  backgroundImage: AssetImage('profile_img.webp'),
                ),

              ],
            ),
            const SizedBox(width: 5),
          ],
        ),
      ],
    );
  }
}
