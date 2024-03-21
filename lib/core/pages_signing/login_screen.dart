import 'package:flutter/material.dart';
import 'package:insta_app/core/pages_signing/register_screen.dart';
import 'package:insta_app/features/button_style.dart';
import 'package:insta_app/features/text_field_style.dart';
import 'package:insta_app/firebase/authentication/auth_login.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';

  String password = '';

  bool emailCheck = false;

  bool passCheck = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text(
          'Login',
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'Kalam',
          ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFieldStyle(
                hintText: 'Enter Your Email :',
                onChange: (String value) {
                  email = value;
                },
                validation: (email) {
                  if (email!.contains(RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
                    emailCheck = true;
                    return null;
                  } else {
                    emailCheck = false;
                    return 'Enter a valid email';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFieldStyle(
                hintText: 'Enter Your Password',
                onChange: (String value) {
                  password = value;
                },
                validation: (password) {
                  if (password!.length >= 6) {
                    passCheck = true;
                    return null;
                  } else {
                    passCheck = false;
                    return 'Enter a valid password';
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't you have an account? ",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Kalam',
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Kalam',
                      ),
                    )),
              ],
            ),
            TextButtonStyle(
              buttonText: '   Login   ',
              onPressed: () async {
                loginWithEmailAndPassword(email, password);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Reset password ?',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Kalam',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
