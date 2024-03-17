import 'package:flutter/material.dart';
import 'package:insta_app/core/pages/login_screen.dart';
import 'package:insta_app/features/button_style.dart';
import 'package:insta_app/features/text_field_style.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 26,
            fontFamily: 'Kalam',
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your Name : ',
              onChange: (String value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your age : ',
              onChange: (String value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your phone : ',
              onChange: (String value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your email : ',
              onChange: (String value) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFieldStyle(
              hintText: 'Enter Your password : ',
              onChange: (String value) {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Do you have an account? ",
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
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Kalam',
                    ),
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextButtonStyle(
              buttonText: 'Register',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 74, 93, 102),
                child: Text(
                  'Or',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
