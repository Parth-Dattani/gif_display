import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'service.dart';

class RemoteServices {
  static var client = http.Client();

  static void printResponse(
    Map<String, String> header, dynamic body, http.Response response) {
    debugPrint('Header: $header');
    debugPrint('Body : $body');
    debugPrint('URL: ${response.request!.url}');
    debugPrint('Response status: ${response.statusCode}');
    debugPrint('Response body: ${response.body}');
    debugPrint('Response body: ${response.headers}');
  }

  static const apiKey = "780X74Y20AF8";

  static Future<http.Response> getDataList({int? limit}) async {
    Map<String, String> header = {
      // "key": "780X74Y20AF8"
    };

    http.Response response = await http.get(
      Uri.parse('${Apis.imageListApi}?q=funny&key=$apiKey&limit=$limit'),
      headers: header,
    );
    printResponse(header, null, response);
    return response;
  }
}
