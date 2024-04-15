import 'package:app_mobile/main.dart';
import 'package:app_mobile/pages/PageAdmin.dart';
import 'package:app_mobile/pages/PageBleach.dart';
import 'package:app_mobile/pages/PageDragonBall.dart';
import 'package:app_mobile/pages/PageNaruto.dart';
import 'package:app_mobile/pages/PageOnePiece.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:app_mobile/pages/Locate.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Scan ou cannes",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),
      ),
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 20)),
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
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageNaruto()));
              },
              child: Text(
                "Naruto",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageDragonBall()));
              },
              child: Text(
                "Dragon Ball",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageBleach()));
              },
              child: Text(
                "Bleach",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => PageOnePiece()));
              },
              child: Text(
                "One Piece",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
          Padding(padding: EdgeInsets.only(top: 20)),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 219, 78, 78))),
              onPressed: () {
                Navigator.push(context,
                    PageRouteBuilder(pageBuilder: (_, __, ___) => PageAdmin()));
              },
              child: Text(
                "Administrateur",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
        ]),
      ),
    );
  }
}
