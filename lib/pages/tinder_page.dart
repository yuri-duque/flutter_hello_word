import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color mainColor = Color(0xfffe5764);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: Image.asset("assets/images/tinder_logo.png"),
            ),
            Container(height: 16),
            Text(
              "Location Changer",
              style: TextStyle(
                  color: mainColor, fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Container(height: 12),
            Text(
              "Plugin app for Tinder",
              style: TextStyle(
                  color: mainColor, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Container(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login with Facebook",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.all(20)),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all<Color>(mainColor),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
