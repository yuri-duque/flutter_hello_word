import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';
import 'package:hello_word/pages/home_page.dart';
import 'package:hello_word/pages/login_page.dart';
import 'package:hello_word/pages/tinder_page.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.getThema(),
          ),
          routes: {
            '/': (context) => const HomePage(),
            '/login': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
            '/tinder': (context) => const TinderPage(),
          },
        );
      },
    );
  }
}
