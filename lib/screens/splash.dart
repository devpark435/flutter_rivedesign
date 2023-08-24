import 'package:flutter/material.dart';
import 'package:rive_flutter/widget/sign_in_dialog.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Take a picture",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .apply(color: Colors.white, fontWeightDelta: 5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "& share it",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .apply(color: Colors.white, fontWeightDelta: 5),
                  ),
                ],
              ),
              Positioned(
                  bottom: 50,
                  child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 50,
                      child: ElevatedButton.icon(
                          onPressed: () {
                            Future.delayed(const Duration(milliseconds: 300),
                                () {
                              customSigninDialog(context);
                            });
                          },
                          icon: Icon(
                            Icons.arrow_right_alt,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                          label: Text(
                            "Start & Share",
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                                fontWeightDelta: 3),
                          )),
                    ),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
