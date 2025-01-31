import 'package:adstack/Utils/colors.dart';
import 'package:flutter/material.dart';

class TopCreators extends StatelessWidget {
  const TopCreators({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCreatorsContainer(),
      ],
    );
  }
}

class TopCreatorsContainer extends StatelessWidget {
  final List<Map<String, dynamic>> creators = [
    {"name": "@maddison_c21", "artworks": 9621},
    {"name": "@karl.wil02", "artworks": 7032},
    {"name": "@susan_pain", "artworks": 5021},
    {"name": "@lucas_art", "artworks": 8754},
    {"name": "@martha_walls", "artworks": 6200},
    {"name": "@johnny_boy", "artworks": 4050},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: MyAppColors.BlueBar,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Creators",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Name", style: TextStyle(color: Colors.white70)),
              Text("Artworks", style: TextStyle(color: Colors.white70)),
              Text("Rating", style: TextStyle(color: Colors.white70)),
            ],
          ),
          SizedBox(height: 10),
          // Wrap the list in a SingleChildScrollView for scrollability
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: creators
                    .map((creator) => CreatorTile(
                  name: creator["name"],
                  artworks: creator["artworks"],
                ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreatorTile extends StatelessWidget {
  final String name;
  final int artworks;

  CreatorTile({required this.name, required this.artworks});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: MyAppColors.DarBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Text(
            "$artworks",
            style: TextStyle(color: Colors.white),
          ),
          Container(
            width: 50,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ],
      ),
    );
  }
}
