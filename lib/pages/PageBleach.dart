import 'package:flutter/material.dart';

class PageBleach extends StatelessWidget {
  const PageBleach({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lire Bleach"),
      ),
      body: const Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}
