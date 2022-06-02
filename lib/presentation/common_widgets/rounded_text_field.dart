import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const RoundedTextField({Key? key, this.hint = '', required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: hint,
          fillColor: Colors.white70),
    );
  }
}
