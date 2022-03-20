import 'package:flutter/material.dart';
import 'package:hello_word/app_controller.dart';
import 'package:hello_word/login_page.dart';

class AppWidget extends StatelessWidget {
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
          home: LoginPage(),
        );
      },
    );
  }
}
