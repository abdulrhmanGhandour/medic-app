import 'package:flutter/material.dart';
import 'package:medicapp/core/utls/colors.dart';
import 'package:medicapp/core/utls/styles.dart';
import 'package:medicapp/features/home/presanteion/view/home_view.dart';
import 'package:medicapp/features/schedule/presanteion/view/schedule_view.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _views = [
    //home view
    const HomeView(),

    //Schedule view
    const ScheduleView(),

    //message
    Container(),

    //setting view
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorData.kPrimaryColor,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
