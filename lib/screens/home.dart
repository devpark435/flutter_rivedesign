import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text("Home Screen"),
      )),
      bottomNavigationBar: GNav(
          haptic: true,
          tabBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
          backgroundColor: Theme.of(context).colorScheme.background,
          tabBorderRadius: 25,
          activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
          curve: Curves.easeIn,
          tabMargin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(icon: Icons.location_on, text: 'location'),
            GButton(icon: Icons.list, text: 'category'),
            GButton(icon: Icons.person_pin_rounded, text: 'user'),
          ]),
    );
  }
}
