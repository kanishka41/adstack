import 'package:flutter/material.dart';

class SideDrawerMenu extends StatefulWidget {
  @override
  _SideDrawerMenuState createState() => _SideDrawerMenuState();
}

class _SideDrawerMenuState extends State<SideDrawerMenu> {
  bool _showWorkspaces = false;
  String _selectedMenu = "";

  void _setSelectedMenu(String menu) {
    setState(() {
      _selectedMenu = menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

backgroundColor: Colors.white,
      child: Column(

        children: [
          // Logo
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.asset(
                'Adstacks.png',
                width: 100,
                height: 50,
              ),
            ),
          ),
          Divider(color: Colors.grey),
          SizedBox(height: 10),

          // Profile Section
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('profile_img.webp'),
                ),
              ),
              Text('Pooja Mishra', style: TextStyle(color: Colors.black)),
              SizedBox(height: 5),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: Text('Admin', style: TextStyle(fontSize: 16.0)),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Divider(),

          // Scrollable Menu List
          Expanded(
            child: SingleChildScrollView(

              child: Column(

                children: [

                  _buildMenuItem(Icons.home_filled, "Home"),
                  _buildMenuItem(Icons.group, "Employees"),
                  _buildMenuItem(Icons.playlist_add_check, "Attendance"),
                  _buildMenuItem(Icons.calendar_month_outlined, "Summary"),
                  _buildMenuItem(Icons.info, "Information"),

                  // Workspaces Section
                  ListTile(
                    title: Text(
                      '  WORKSPACE',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    tileColor: Colors.purple[100],
                    trailing: IconButton(
                      icon: Icon(
                        _showWorkspaces ? Icons.remove : Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _showWorkspaces = !_showWorkspaces;
                        });
                      },
                    ),
                    onTap: () {},
                  ),

                  if (_showWorkspaces) ...[
                    ListTile(
                      title: Center(child: Text('Add Workspace', style: TextStyle(fontSize: 13))),
                      trailing: Icon(Icons.keyboard_arrow_down),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Center(child: Text('Workspace List', style: TextStyle(fontSize: 13))),
                      trailing: Icon(Icons.keyboard_arrow_down),
                      onTap: () {},
                    ),
                  ],

                ],
              ),
            ),
          ),


          Divider(),
          _buildMenuItem(Icons.settings, "Settings"),
          _buildMenuItem(Icons.logout, "Logout"),
        ],
      ),
    );
  }



  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: _selectedMenu == title ? Colors.black: Colors.black87),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: _selectedMenu == title ? FontWeight.bold: FontWeight.normal,
          color: _selectedMenu == title ? Colors.black : Colors.black,
        ),
      ),
      onTap: () => _setSelectedMenu(title),
    );
  }
}
