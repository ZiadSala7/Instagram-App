import 'package:flutter/material.dart';

class TextFieldStyle extends StatefulWidget {
  final String hintText;
  final Function(String value) onChange;
  final String? Function(String?)? validation;
  const TextFieldStyle({
    super.key,
    required this.hintText,
    required this.onChange,
    required this.validation,
  });

  @override
  State<TextFieldStyle> createState() => _TextFieldStyleState();
}

class _TextFieldStyleState extends State<TextFieldStyle> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          validator: widget.validation,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: widget.onChange,
          decoration: InputDecoration(
              labelText: widget.hintText,
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
        ),
      ),
    );
  }
}
