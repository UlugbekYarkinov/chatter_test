import 'package:chatter_test/components/activation_action_button.dart';
import 'package:chatter_test/constants.dart';
import 'package:flutter/material.dart';
import 'welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              color: Colors.lightBlueAccent,
              onTap: (){},
              label: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}
