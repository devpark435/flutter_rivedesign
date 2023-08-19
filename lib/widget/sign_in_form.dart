import 'package:flutter/material.dart';
import 'package:rive_flutter/screens/bottom_nav.dart';

class SignInFrom extends StatefulWidget {
  const SignInFrom({super.key});

  @override
  State<SignInFrom> createState() => _SignInFromState();
}

class _SignInFromState extends State<SignInFrom> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String isSignIn = "";

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (email) => {},
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "";
                  }
                  return null;
                },
                onSaved: (password) {},
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   setState(() {
                  //     isSignIn = "check";
                  //   });
                  // } else {
                  //   setState(() {
                  //     isSignIn = "error";
                  //   });
                  // }
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavigation()));
                },
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
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                label: Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeightDelta: 2),
                ),
              ),
            ),
          ],
        ));
  }
}
