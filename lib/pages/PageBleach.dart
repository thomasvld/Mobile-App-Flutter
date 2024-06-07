import 'package:flutter/material.dart';

class PageBleach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageTablePage(),
    );
  }
}

class ImageTablePage extends StatefulWidget {
  @override
  _ImageTablePageState createState() => _ImageTablePageState();
}

class _ImageTablePageState extends State<ImageTablePage> {
  // Liste des noms d'images
  final List<String> _imageNames = [
    'image1.png',
    // Ajoutez d'autres noms d'images ici si nécessaire
  ];

  // Map des noms d'images aux assets correspondants
  final Map<String, String> _imagePaths = {
    'image1.png': 'Image API',
    // Ajoutez d'autres chemins d'images ici si nécessaire
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lire Bleach",
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: (Color.fromARGB(255, 27, 103, 204)),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _imageNames.length,
          itemBuilder: (context, index) {
            String imageName = _imageNames[index];
            String imagePath = _imagePaths[imageName]!;

            return ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(imageName),
                ],
              ),
              onTap: () {
                _showImagePopup(context, imagePath);
              },
            );
          },
        ),
      ),
    );
  }

  // Fonction pour afficher l'image sélectionnée dans une popup
  void _showImagePopup(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(imagePath),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}