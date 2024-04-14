import 'package:flutter/material.dart';

class PageNaruto extends StatelessWidget {
  const PageNaruto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lire Naruto"),
      ),
      body: const Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}
