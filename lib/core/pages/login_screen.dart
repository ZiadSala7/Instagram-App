import 'package:flutter/material.dart';
import 'package:insta_app/core/pages/register_screen.dart';
import 'package:insta_app/features/button_style.dart';
import 'package:insta_app/features/text_field_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your Email :',
              onChange: (String value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your Password',
              onChange: (String value) {},
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
          const TextButtonStyle(buttonText: '   Login   '),
        ],
      ),
    );
  }
}
