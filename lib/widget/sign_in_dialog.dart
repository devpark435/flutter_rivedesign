import 'package:flutter/material.dart';
import 'package:rive_flutter/widget/sign_in_form.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

Future<Object?> customSigninDialog(context) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Sing in",
      context: context,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position:
              Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
                  .animate(animation),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) => Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                "Sign In",
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .apply(
                                        color: Colors.black,
                                        fontWeightDelta: 3),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                                "Take your first picture \n&\n share it",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(color: Colors.black)),
                          ),
                          const SignInFrom(),
                          Row(children: [
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: const Divider(
                                  color: Colors.black26,
                                  height: 36,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "OR",
                                style: TextStyle(color: Colors.black26),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: const Divider(
                                  color: Colors.black26,
                                  height: 36,
                                ),
                              ),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("Sign up with E-mail, Apple",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .apply(color: Colors.black54)),
                          ),
                          Column(
                            children: [
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize:
                                        const Size(double.infinity, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.email,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                  label: Text(
                                    "Sign in with E-mail",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: SignInWithAppleButton(onPressed: () {}),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: -35,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor:
                                Theme.of(context).colorScheme.background,
                            child: Icon(
                              Icons.close,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ));
}
