import 'package:adstack/Utils/colors.dart';
import 'package:flutter/material.dart';

class Anniversary extends StatelessWidget {
  const Anniversary({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> profiles = ['Profile 1', 'Profile 2'];

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyAppColors.wishing,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text(
                "Anniversary Wishes",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.star, color: Colors.yellow),
            ],
          ),
          SizedBox(height: 20),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: profiles.map((profile) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('profile_img.webp'),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            "Total  |   ${profiles.length}    |",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.send, color: Colors.white),
            label: Text("Send Anniversary Wishes", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),// Rounded corners
              ),
            ),
          ),
        ],
      ),
    );
  }
}
