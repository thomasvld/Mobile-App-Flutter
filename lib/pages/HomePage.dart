import 'package:app_mobile/pages/EventPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan ou cannes"),
      ),
      body: Center(
        child: Column(children: [
          Text(
            "Quel manga souhaitez-vous lire ?",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (_, __, ___) => EventPage()));
              },
              child: Text(
                "Afficher le planning",
                style: TextStyle(fontSize: 12),
              ))
        ]),
      ),
    );
  }
}
