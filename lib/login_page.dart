import 'package:flutter/material.dart';
import 'package:hello_word/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  label: "Email",
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextField(
                  label: "Senha",
                  onChanged: (text) {
                    password = text;
                  },
                  typePassword: true,
                ),
                CustomButton(
                  text: "Entrar",
                  onPressed: () {
                    if (email == "teste@teste.com" && password == "123") {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      print("email: $email, password: $password");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final TextInputType keyboardType;
  final bool typePassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.typePassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        obscureText: typePassword,
        keyboardType: keyboardType,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final minWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(minimumSize: Size(minWidth, 50)),
      ),
    );
  }
}
