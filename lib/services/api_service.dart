import 'dart:convert';
import 'package:app_mobile/models/scan_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<ArticleModel>> getArticles() async {
    final response = await http.get(Uri.http("http://localhost:3000", "Image"));
    if (response.statusCode == 200) {
      List<dynamic> articlesJson = json.decode(response.body);
      List<ArticleModel> articles =
          articlesJson.map((json) => ArticleModel.fromJson(json)).toList();
      return articles;
    } else {
      throw Exception('Failed to load scans');
    }
  }
}