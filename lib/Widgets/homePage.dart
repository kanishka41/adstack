import 'package:adstack/Utils/colors.dart';
import 'package:adstack/Widgets/anniv_wish.dart';
import 'package:adstack/Widgets/birthday.dart';
import 'package:adstack/Widgets/calendar_section.dart';
import 'package:adstack/Widgets/projects_list.dart';
import 'package:adstack/Widgets/top_creators.dart';
import 'package:flutter/material.dart';
import 'package:adstack/Config/responsive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context); // Check if mobile

    return Container(
      width: double.infinity,
      child: isMobile
          ? SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('Homeimg.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: MyAppColors.BlueBar, // Light blue border
                  width: 1, // Set border width
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: Projects(),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: TopCreators(),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('graph.png'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.lightBlue, // Light blue border
                  width: 2, // Set border width
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              color: MyAppColors.DarBlue,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  CalendarSection(),
                  SizedBox(height: 20),
                  Birthday(),
                  SizedBox(height: 20),
                  Anniversary(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      )
          : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('Homeimg.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: MyAppColors.BlueBar, // Light blue border
                      width: 1, // Set border width
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 350,
                        margin: EdgeInsets.only(right: 10),
                        child: Projects(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 350,
                        margin: EdgeInsets.only(right: 10),
                        child: TopCreators(),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('graph.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.lightBlue, // Light blue border
                      width: 1, // Set border width
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Container(
            width: 300,
            height: 900,
            color: MyAppColors.DarBlue,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                CalendarSection(),
                SizedBox(height: 30),
                Birthday(),
                SizedBox(height: 30),
                Anniversary(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
