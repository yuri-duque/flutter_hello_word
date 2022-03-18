import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: "123"));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Container(
        child: Center(child: Text("teste")),
      ),
    );
  }
}
