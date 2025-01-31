import 'package:adstack/Utils/colors.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllProjectsContainer(),
      ],
    );
  }
}

class AllProjectsContainer extends StatefulWidget {
  @override
  _AllProjectsContainerState createState() => _AllProjectsContainerState();
}

class _AllProjectsContainerState extends State<AllProjectsContainer> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyAppColors.DarBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All Projects",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),

          SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => setState(() => selectedIndex = 0),
                  child: ProjectTile(
                    highlight: selectedIndex == 0,
                    title: selectedIndex == 0 ? "Blockchain Technology Overview" : "Technology behind the Blockchain",
                    description: selectedIndex == 0 ? "Detailed overview of blockchain technology ." : "Project #1 • See project details",
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedIndex = 1),
                  child: ProjectTile(
                    highlight: selectedIndex == 1,
                    title: selectedIndex == 1 ? "AI and Machine Learning" : "Project #2 Details",
                    description: selectedIndex == 1 ? "An introduction to AI and machine learning concepts." : "Project #2 • See project details",
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => selectedIndex = 2),
                  child: ProjectTile(
                    highlight: selectedIndex == 2,
                    title: selectedIndex == 2 ? "Advanced Robotics" : "Project #3 Details",
                    description: selectedIndex == 2 ? "Exploring the world of advanced robotics and automation." : "Project #3 • See project details",
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final bool highlight;
  final String title;
  final String description;

  ProjectTile({required this.highlight, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: highlight ? Colors.redAccent : MyAppColors.BlueBar,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(Icons.folder, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          Icon(Icons.edit, color: Colors.white),
        ],
      ),
    );
  }
}
