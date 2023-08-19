import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(scrollDirection: Axis.vertical, children: [
      firstScreen(context),
      secondScreen(),
      thirdScreen(),
    ])));
  }
}

Widget firstScreen(_) {
  return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/splash.gif'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome",
                  style: Theme.of(_).textTheme.displayMedium!.apply(
                        color: Colors.white,
                        fontWeightDelta: 5,
                      ),
                ),
              ],
            ),
          ),
          const Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Icon(Icons.arrow_downward, color: Colors.white))
        ],
      ));
}

Widget secondScreen() {
  return Container(
    color: Colors.blue,
  );
}

Widget thirdScreen() {
  return Container(
    color: Colors.green,
  );
}
