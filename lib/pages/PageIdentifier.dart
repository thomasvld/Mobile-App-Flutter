import 'package:flutter/material.dart';

import 'PageOnePiece.dart';

class PageIdentifier extends StatelessWidget {
  const PageIdentifier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Identification",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),
        ),
        body:  Center(
          child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            "Créez un compte ou identifiez-vous :",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Entrez votre nom utilisateur',
            ),
          ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Entrez votre adresse mail',
            ),
          ),
          ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Entrez votre mot de passe',
            ),
          ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                
              },
              child: Text(
                "Créer le compte",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
              ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 27, 103, 204))),
              onPressed: () {
                
              },
              child: Text(
                "S'identifier",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
              )),
          ],
        ),
        ),
        );
        
  }
  
  
}
