import 'package:flutter/material.dart';

class PageOnePiece extends StatelessWidget {
  const PageOnePiece({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lire One Piece"),
      ),
      body: const Center(
        child: Text("Prochainement disponible"),
      ),
    );
  }
}
