import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rive_flutter/screens/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text("Location"),
    Text("Category"),
    Text("User"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _widgetOptions.elementAt(_selectIndex)),
      bottomNavigationBar: GNav(
          haptic: true,
          curve: Curves.easeIn,
          gap: 8,
          tabBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
          backgroundColor: Theme.of(context).colorScheme.background,
          tabBorderRadius: 25,
          activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
          tabMargin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(icon: Icons.location_on, text: 'location'),
            GButton(icon: Icons.list, text: 'category'),
            GButton(icon: Icons.person_pin_rounded, text: 'user'),
          ],
          selectedIndex: _selectIndex,
          onTabChange: (index) {
            setState(() {
              _selectIndex = index;
            });
          }),
    );
  }
}
