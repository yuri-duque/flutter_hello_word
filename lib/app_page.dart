import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';
import 'package:hello_word/pages/home_page.dart';
import 'package:hello_word/pages/login_page.dart';

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
            '/home': (context) => const LoginPage(),
            '/': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
