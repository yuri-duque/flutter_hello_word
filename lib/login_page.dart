import 'package:flutter/material.dart';
import 'package:hello_word/home_page.dart';

import 'components/custom_button_component.dart';
import 'components/custom_text_field_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  String imageURL =
      "https://upload.wikimedia.org/wikipedia/pt/f/f6/Pok%C3%A9mon_GO_logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildLogo(),
                ...buildForm(),
                buildButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 16),
      child: Image.network(imageURL),
    );
  }

  List<Widget> buildForm() {
    return [
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
      )
    ];
  }

  Widget buildButton() {
    return CustomButton(
      text: "Entrar",
      onPressed: () {
        if (email == "teste@teste.com" && password == "123") {
          Navigator.of(context).pushReplacementNamed("/home");
        } else {
          print("email: $email, password: $password");
        }
      },
    );
  }
}
