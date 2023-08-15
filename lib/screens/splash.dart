import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Take a picture",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "And share it",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        onPressed: () {
          showGeneralDialog(
              context: context,
              pageBuilder: (context, animation, secondaryAnimation) => Center(
                    child: Container(
                      height: 200,
                    ),
                  ));
        },
        label: Text(
          "Start & Share",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        icon: Icon(
          Icons.arrow_forward,
          size: 35,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
