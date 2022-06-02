import 'package:flutter/material.dart';
import 'package:tyba_technical_test/controllers/auth_controller.dart';
import 'package:tyba_technical_test/presentation/common_widgets/rounded_text_field.dart';
import 'package:tyba_technical_test/presentation/common_widgets/safe_scaffold.dart';
import 'package:get/get.dart';
import 'package:tyba_technical_test/presentation/login/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthController _authController = Get.find();


  void login() {
    String username = _usernameController.text;
    String password = _passwordController.text;
    _authController.login(username, password);
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
            const Text('Iniciar sesión'),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                child: RoundedTextField(
                  controller: _usernameController,
                  hint: 'Usuario',
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
                onPressed: login, child: const Text('Iniciar sesión')),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('¿No tienes una cuenta?'),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => const RegisterPage()));
                  },
                  child: const Text(
                    'Crear una',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
