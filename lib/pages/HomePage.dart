import 'package:app_mobile/pages/PageAdmin.dart';
import 'package:app_mobile/pages/PageBleach.dart';
import 'package:app_mobile/pages/PageDragonBall.dart';
import 'package:app_mobile/pages/PageNaruto.dart';
import 'package:app_mobile/pages/PageOnePiece.dart';
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
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageNaruto()));
              },
              child: Text(
                "Naruto",
                style: TextStyle(fontSize: 12),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageDragonBall()));
              },
              child: Text(
                "Dragon Ball",
                style: TextStyle(fontSize: 12),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageBleach()));
              },
              child: Text(
                "Bleach",
                style: TextStyle(fontSize: 12),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageOnePiece()));
              },
              child: Text(
                "One Piece",
                style: TextStyle(fontSize: 12),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 243, 33, 33))),
              onPressed: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (_, __, ___) => PageAdmin()));
              },
              child: Text(
                "Administrateur",
                style: TextStyle(fontSize: 12),
              )),
        ]),
      ),
    );
  }
}
