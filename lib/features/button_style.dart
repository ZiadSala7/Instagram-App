import 'package:flutter/material.dart';

class TextButtonStyle extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;
  const TextButtonStyle({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        padding: const EdgeInsets.all(15),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontFamily: 'Kalam',
          fontSize: 26,
          color: Color.fromARGB(255, 34, 67, 74),
        ),
      ),
    );
  }
}
