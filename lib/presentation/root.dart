import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tyba_technical_test/presentation/home/home.dart';
import 'package:tyba_technical_test/presentation/login/login.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  Widget _rootWidget = const LoginPage();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        setState(() {
          _rootWidget = const LoginPage();
        });
      } else {
        setState(() {
          _rootWidget = const HomePage();
        });
      }
    });
    return _rootWidget;
  }
}
