import 'package:flutter/material.dart';
import 'package:app_mobile/models/scan_model.dart';
import 'package:app_mobile/services/api_service.dart';

class PageNaruto extends StatelessWidget {
  PageNaruto({Key? key}) : super(key: key);
  final ApiService apiService = ApiService();

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
      body: FutureBuilder<List<ArticleModel>>(
          future: apiService.getArticles(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${data[index].name}"),
                    leading: FlutterLogo(size: 200),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
    );
  }
}

