import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PageAdmin extends StatelessWidget {
  const PageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ajouter des scans",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: 'bleach', child: Text("Bleach")),
                DropdownMenuItem(
                    value: 'dragonball', child: Text("Dragon Ball")),
                DropdownMenuItem(value: 'naruto', child: Text("Naruto")),
                DropdownMenuItem(value: 'onepiece', child: Text("One Piece")),
              ],
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {},
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    final picker = ImagePicker();
                    final pickedFile =
                        await picker.pickImage(source: ImageSource.camera);

                    if (pickedFile != null) {
                      // L'utilisateur a pris une photo
                      // Faites quelque chose avec l'image capturée, comme l'afficher ou l'envoyer à un serveur
                      print('Chemin de l\'image : ${pickedFile.path}');
                    } else {
                      // L'utilisateur a annulé la capture de la photo
                    }
                  },
                  child: Text('Prendre une photo'),
                )),
            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {}, // Ajoutez une fonction onPressed
                  child: Text("Envoyer"),
                )),
          ],
        ),
      ),
    );
  }
}
