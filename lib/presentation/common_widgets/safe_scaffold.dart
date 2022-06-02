import 'package:flutter/material.dart';

class SafeScaffold extends StatelessWidget {
  final Widget child;

  const SafeScaffold({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: child
      ),
    );
  }
}
