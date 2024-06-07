import 'dart:async';
import 'dart:convert';
import 'package:app_mobile/models/scan_model.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';

class ApiService {
  Future<List<ScanModel>> getScans() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      print('No internet connection');
      throw Exception('No internet connection');
    }

    try {
      print('Sending HTTP request');
      // ignore: unnecessary_string_escapes
      final response = await http.get(Uri.http("localhost:3000", "ScanController.cs")).timeout(const Duration(seconds: 5));
      print('Received HTTP response with status code ${response.statusCode}');
      if (response.statusCode == 200) {
        try {
          print('Decoding JSON');
          print('Server response: ${response.body}');
          List<dynamic> scansJson = json.decode(response.body);
          List<ScanModel> scans =
              scansJson.map((json) => ScanModel.fromJson(json)).toList();
          print('Successfully decoded JSON and created ScanModel list');
          return scans;
        } catch (e) {
          print('Failed to decode JSON: $e');
          throw FormatException('Failed to decode JSON: $e');
        }
      } else {
        print('Failed to load scans');
        throw Exception('Failed to load scans');
      }
    } on TimeoutException {
      print('Request timed out');
      throw Exception('Request timed out');
    } catch (e) {
      print('Failed to make HTTP request: $e');
      throw Exception('Failed to make HTTP request: $e');
    }
  }
}