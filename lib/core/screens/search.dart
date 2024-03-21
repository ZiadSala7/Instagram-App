import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration(
            fillColor: Color.fromARGB(255, 37, 44, 48),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            )),
            labelText: 'Search for a user...',
          ),
        ),
      ),
    );
  }
}
