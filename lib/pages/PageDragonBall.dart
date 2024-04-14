import 'package:flutter/material.dart';

class PageDragonBall extends StatelessWidget {
  const PageDragonBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lire Dragon Ball"),
      ),
      body: const Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}
