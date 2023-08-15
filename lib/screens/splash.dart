import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

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
                height: 40,
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
          Future.delayed(const Duration(milliseconds: 300), () {
            customSigninDialog(context);
          });
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .apply(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Take your first picture \n&\n share it",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .apply(color: Colors.black)),
                      ),
                      Form(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email),
                                labelText: "Email",
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                labelText: "Password",
                                labelStyle: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primaryContainer,
                            minimumSize: const Size(double.infinity, 50),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_right_alt,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                          label: Text(
                            "Sign In",
                            style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer),
                          ),
                        ),
                      ),
                      Row(children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
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
                            margin: const EdgeInsets.symmetric(horizontal: 20),
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
                                minimumSize: const Size(double.infinity, 40),
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
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: SignInWithAppleButton(onPressed: () {}),
                          ),
                          // SocialLoginButton(
                          //     buttonType: SocialLoginButtonType.apple,
                          //     onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
}
