import 'package:flutter/material.dart';

class TextFieldStyle extends StatelessWidget {
  final String hintText;
  final Function(String value) onChange;
  const TextFieldStyle(
      {super.key, required this.hintText, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged: onChange,
      decoration: InputDecoration(
          labelText: hintText,
          labelStyle: const TextStyle(
            fontFamily: 'Kalam',
            fontSize: 20,
          ),
          focusedBorder: InputBorder.none,
          fillColor: const Color.fromARGB(255, 63, 72, 79),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
