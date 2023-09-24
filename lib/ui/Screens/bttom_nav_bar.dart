import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:daily_doer/ui/Screens/homepage.dart';
import 'package:daily_doer/ui/Screens/tasks_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    const TasksScreen(),
    const HomeScreen(),
    const TasksScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          backgroundColor: Colors.transparent,
          color: const Color(0xff212529),
          items: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.rectangle_on_rectangle_angled,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
            ),
          ]),
      body: screens[_selectedIndex],
    );
  }
}
