import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

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