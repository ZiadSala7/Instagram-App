import 'package:flutter/material.dart';
import 'package:insta_app/core/pages/login_screen.dart';
import 'package:insta_app/features/button_style.dart';
import 'package:insta_app/features/text_field_style.dart';
import 'package:insta_app/firebase/authentication/auth_register.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String name = '';

  String age = '';

  String phone = '';

  String email = '';

  String password = '';

  bool nameCheck = false;

  bool ageCheck = false;

  bool phoneCheck = false;

  bool emailCheck = false;

  bool passCheck = false;

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
          TextFieldStyle(
            hintText: 'Enter Your Name : ',
            onChange: (String value) {
              name = value;
            },
            validation: (name) {
              if (name!.length > 1) {
                nameCheck = true;
                return null;
              } else {
                nameCheck = false;
                return 'Enter your name';
              }
            },
          ),
          TextFieldStyle(
            hintText: 'Enter Your age : ',
            onChange: (String value) {
              age = value;
            },
            validation: (age) {
              if (age!.length > 1) {
                ageCheck = true;
                return null;
              } else {
                ageCheck = false;
                return 'Enter your name';
              }
            },
          ),
          TextFieldStyle(
            hintText: 'Enter Your phone : ',
            onChange: (String value) {
              phone = value;
            },
            validation: (phone) {
              if (phone!.length >= 11) {
                phoneCheck = true;
                return null;
              } else {
                phoneCheck = false;
                return 'Enter a valid phone number';
              }
            },
          ),
          TextFieldStyle(
            hintText: 'Enter Your email : ',
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
          TextFieldStyle(
            hintText: 'Enter Your password : ',
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
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: TextButtonStyle(
              buttonText: 'Register',
              onPressed: () async {
                if (ageCheck &&
                    emailCheck &&
                    nameCheck &&
                    passCheck &&
                    phoneCheck) {
                  await registerWithEmailAndPassword(
                      email, phone, age, name, password);
                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                }
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 74, 93, 102),
            child: Text(
              'Or',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
