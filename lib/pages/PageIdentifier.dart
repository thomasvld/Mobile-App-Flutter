import 'package:flutter/material.dart';

class PageIdentifier extends StatelessWidget {
  const PageIdentifier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Créez un compte ou identifiez-vous",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),));
  }
}
