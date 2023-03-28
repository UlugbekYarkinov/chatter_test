import 'package:chatter_test/screens/chat_screen.dart';
import 'package:chatter_test/screens/login_screen.dart';
import 'package:chatter_test/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatter_test/screens/welcome_screen.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: '/',
      routes: <String, Widget Function(BuildContext)> {
        '/': (context) => const WelcomeScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegistrationScreen(),
        '/chat_screen': (context) => ChatScreen(),
      },
    );
  }
}
