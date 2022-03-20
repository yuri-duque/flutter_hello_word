import 'package:flutter/material.dart';

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
          enabledBorder: _buildBorder(),
          focusedBorder: _buildBorder(),
        ),
        obscureText: typePassword,
        keyboardType: keyboardType,
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: Colors.white,
      ),
    );
  }
}
