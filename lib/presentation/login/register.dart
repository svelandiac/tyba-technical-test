import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../common_widgets/rounded_text_field.dart';
import '../common_widgets/safe_scaffold.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthController _authController = Get.find();


  void register () async {
    String username = _usernameController.text;
    String password = _passwordController.text;
    await _authController.register(username, password);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return SafeScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Registrarse'),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                child: RoundedTextField(
                  controller: _usernameController,
                  hint: 'Correo electrónico',
                ),
                width: mediaQuery.size.width * 0.5),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                child: RoundedTextField(
                  controller: _passwordController,
                  hint: 'Contraseña',
                ),
                width: mediaQuery.size.width * 0.5),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: register, child: const Text('Registrarse')),
          ],
        ),
      ),
    );
  }
}
