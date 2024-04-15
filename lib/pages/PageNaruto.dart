import 'package:flutter/material.dart';

class PageNaruto extends StatelessWidget {
  const PageNaruto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lire Naruto",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Text("Id#"),
                title: Text("Nom du manga"),
                subtitle: Text("Chemin de l'image"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text("Id#"),
                title: Text("Nom du manga"),
                subtitle: Text("Chemin de l'image"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Text("Id#"),
                title: Text("Nom du manga"),
                subtitle: Text("Chemin de l'image"),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
