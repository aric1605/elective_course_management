import 'package:elective_course_management/Pages/NavBar%20Pages/HomePage.dart';
import 'package:elective_course_management/Pages/NavBar%20Pages/MyCoursePage.dart';
import 'package:elective_course_management/Pages/NavBar%20Pages/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:super_animated_navigation_bar/super_animated_navigation_bar.dart';

class mainActivity extends StatefulWidget {
  const mainActivity({super.key});
  @override
  State<mainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<mainActivity> {
  int _currentIndex = 0;

  final List<Widget> _pages = [Homepage(), MyCoursePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: SuperAnimatedNavBar(
        currentIndex: _currentIndex,
        barHeight: 70,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        indeicatorDecoration: IndeicatorDecoration(
          indicatorType: IndicatorType.wave,
          indeicatorColor: Colors.deepPurple.shade900,

          indicatorPosition: IndicatorPosition.bottom,
          curve: Curves.easeInOutBack,
          animateDuration: const Duration(milliseconds: 800),
        ),
        items: [
          NavigationBarItem(
            selectedIcon: Icon(
              Icons.home_filled,
              size: 28,
              color: Colors.deepPurple.shade900,
            ),
            unSelectedIcon: Icon(
              Icons.home_outlined,
              size: 28,
              color: Colors.black,
            ),
          ),
          NavigationBarItem(
            selectedIcon: Icon(
              Icons.subject,
              size: 28,
              color: Colors.deepPurple.shade900,
            ),
            unSelectedIcon: Icon(
              Icons.subject_outlined,
              size: 28,
              color: Colors.black,
            ),
          ),
          NavigationBarItem(
            selectedIcon: Icon(
              Icons.contact_page,
              size: 28,
              color: Colors.deepPurple.shade900,
            ),
            unSelectedIcon: Icon(
              Icons.contact_page_outlined,
              size: 28,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
