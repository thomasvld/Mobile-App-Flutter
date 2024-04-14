import 'package:flutter/material.dart';

class PageAdmin extends StatelessWidget {
  const PageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajouter des scans"),
      ),
      body: const Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}
