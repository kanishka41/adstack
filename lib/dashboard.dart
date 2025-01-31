import 'package:adstack/Widgets/header_parts.dart';
import 'package:adstack/Widgets/homePage.dart';
import 'package:flutter/material.dart';
import 'package:adstack/Widgets/side_drawer_menu.dart';
import 'package:adstack/Config/responsive.dart';

class MyDashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: SizedBox(
        width: 250,
        child: SideDrawerMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.notifications, color: Colors.black),
          ),
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.account_circle, color: Colors.black),
          ),
        ],
      )
          : PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drawer for desktop
            if (Responsive.isDesktop(context))
              Container(
                width: 250,
                color: Colors.grey[200],
                child: SideDrawerMenu(), // Side Drawer for desktop
              ),

            // Main content area (dashboard content)
            Expanded(
              flex: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderParts(), // Add your custom header here
                      SizedBox(height: 20),
                      HomePage(),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

      backgroundColor: Colors.grey[100],



    );
  }
}
