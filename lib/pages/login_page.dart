import 'package:flutter/material.dart';
import 'package:hello_word/components/button_component.dart';
import 'package:hello_word/components/text_field_component.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  final String logoImagePath = "assets/images/logo.png";
  final String backgroundImagePath = "assets/images/background.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ..._buildBackground(),
        _buildBody(),
      ]),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              ..._buildForm(),
              _buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBackground() {
    return [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          backgroundImagePath,
          fit: BoxFit.cover,
        ),
      ),
      Container(color: Colors.black.withOpacity(0.4)),
    ];
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 16),
      child: Image.asset(logoImagePath),
    );
  }

  List<Widget> _buildForm() {
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

  Widget _buildButton() {
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
