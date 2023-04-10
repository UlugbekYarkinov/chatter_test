import 'package:chatter_test/components/activation_action_button.dart';
import 'package:chatter_test/constants.dart';
import 'package:chatter_test/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = "registration_screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, WelcomeScreen.id);
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: textFieldDecoration.copyWith(hintText: 'Enter you email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: textFieldDecoration.copyWith(hintText: 'Enter you password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            ActivationActionButton(
              color: Colors.blueAccent,
              onTap: (){},
              label: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}